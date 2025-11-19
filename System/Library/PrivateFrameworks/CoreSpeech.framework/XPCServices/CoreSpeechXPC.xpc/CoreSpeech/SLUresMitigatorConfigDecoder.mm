@interface SLUresMitigatorConfigDecoder
- (SLUresMitigatorConfigDecoder)initWithConfigFile:(id)a3 errOut:(id *)a4;
- (id)getBnnsIrWeightFile;
- (id)getModelFile;
@end

@implementation SLUresMitigatorConfigDecoder

- (id)getBnnsIrWeightFile
{
  v3 = [(NSDictionary *)self->_configDict objectForKeyedSubscript:@"BnnsIrWeightFile"];

  if (v3)
  {
    resourcePath = self->_resourcePath;
    v5 = [(NSDictionary *)self->_configDict objectForKeyedSubscript:@"BnnsIrWeightFile"];
    v6 = [(NSString *)resourcePath stringByAppendingPathComponent:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)getModelFile
{
  v3 = kUresMitigatorModelFileKey;
  v4 = [(NSDictionary *)self->_configDict objectForKeyedSubscript:kUresMitigatorModelFileKey];

  if (v4)
  {
    resourcePath = self->_resourcePath;
    v6 = [(NSDictionary *)self->_configDict objectForKeyedSubscript:v3];
    v7 = [(NSString *)resourcePath stringByAppendingPathComponent:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (SLUresMitigatorConfigDecoder)initWithConfigFile:(id)a3 errOut:(id *)a4
{
  v6 = a3;
  v24.receiver = self;
  v24.super_class = SLUresMitigatorConfigDecoder;
  v7 = [(SLUresMitigatorConfigDecoder *)&v24 init];
  if (!v7)
  {
    goto LABEL_11;
  }

  v8 = [v6 stringByDeletingLastPathComponent];
  resourcePath = v7->_resourcePath;
  v7->_resourcePath = v8;

  v10 = [CSFModelConfigDecoder decodeJsonFromFile:v6];
  configDict = v7->_configDict;
  v7->_configDict = v10;

  v12 = v7->_configDict;
  if (v12)
  {
    v13 = [(NSDictionary *)v12 objectForKeyedSubscript:kUresMitigatorModelFileKey];
    if (v13)
    {
      v14 = v13;
      v15 = [(NSDictionary *)v7->_configDict objectForKeyedSubscript:@"InputOpsMap"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = [(NSDictionary *)v7->_configDict objectForKeyedSubscript:@"OutputMap"];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          goto LABEL_11;
        }
      }

      else
      {
      }
    }
  }

  v18 = [NSString stringWithFormat:@"Missing config for Ures %@", v7->_configDict];
  v25 = @"reason";
  v26 = v18;
  v19 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
  v20 = [NSError errorWithDomain:@"com.apple.sl" code:105 userInfo:v19];

  if (!a4)
  {

LABEL_11:
    v22 = v7;
    goto LABEL_12;
  }

  v21 = v20;
  *a4 = v20;

  v22 = 0;
LABEL_12:

  return v22;
}

@end
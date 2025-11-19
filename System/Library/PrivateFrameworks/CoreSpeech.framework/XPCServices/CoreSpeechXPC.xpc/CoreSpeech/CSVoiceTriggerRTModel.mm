@interface CSVoiceTriggerRTModel
- (CSVoiceTriggerRTModel)initWithCoder:(id)a3;
- (CSVoiceTriggerRTModel)initWithData:(id)a3 hash:(id)a4 locale:(id)a5;
- (CSVoiceTriggerRTModel)initWithData:(id)a3 hash:(id)a4 locale:(id)a5 digest:(id)a6 signature:(id)a7 certificate:(id)a8;
- (CSVoiceTriggerRTModel)initWithHash:(id)a3 locale:(id)a4;
- (id)builtInRTModelDictionary;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CSVoiceTriggerRTModel

- (id)description
{
  v3 = +[NSMutableString string];
  v4 = [(NSData *)self->_modelData length];
  modelLocale = self->_modelLocale;
  modelHash = self->_modelHash;
  v7 = [(NSData *)self->_digest base64EncodedStringWithOptions:0];
  v8 = [v7 substringToIndex:5];
  v9 = [(NSData *)self->_certificate base64EncodedStringWithOptions:0];
  v10 = [v9 substringToIndex:5];
  v11 = [(NSData *)self->_signature base64EncodedStringWithOptions:0];
  v12 = [v11 substringToIndex:5];
  [v3 appendFormat:@"dataSize(%d), hash(%@), locale(%@), digest(%@), cert(%@), signature(%@)", v4, modelHash, modelLocale, v8, v10, v12];

  return v3;
}

- (id)builtInRTModelDictionary
{
  if (self->_modelData && self->_modelHash && self->_modelLocale)
  {
    v3 = [@"RT Model for " stringByAppendingString:?];
    v4 = [v3 stringByAppendingString:@" from asset "];

    v5 = [v4 stringByAppendingString:self->_modelHash];
    modelData = self->_modelData;
    v9[0] = @"CorealisRTModel";
    v9[1] = @"CorealisRTModelVersion";
    v10[0] = modelData;
    v10[1] = v5;
    v7 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  modelData = self->_modelData;
  v11 = v4;
  if (modelData)
  {
    [v4 encodeObject:modelData forKey:@"RTModelData"];
    v4 = v11;
  }

  modelHash = self->_modelHash;
  if (modelHash)
  {
    [v11 encodeObject:modelHash forKey:@"RTModelHash"];
    v4 = v11;
  }

  modelLocale = self->_modelLocale;
  if (modelLocale)
  {
    [v11 encodeObject:modelLocale forKey:@"RTModelLocale"];
    v4 = v11;
  }

  digest = self->_digest;
  if (digest)
  {
    [v11 encodeObject:digest forKey:@"RTModelDigest"];
    v4 = v11;
  }

  signature = self->_signature;
  if (signature)
  {
    [v11 encodeObject:signature forKey:@"RTModelSignature"];
    v4 = v11;
  }

  certificate = self->_certificate;
  if (certificate)
  {
    [v11 encodeObject:certificate forKey:@"RTModelCertificate"];
    v4 = v11;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CSVoiceTriggerRTModel alloc];
  v5 = [(NSData *)self->_modelData copy];
  v6 = [(NSString *)self->_modelHash copy];
  v7 = [(NSString *)self->_modelLocale copy];
  v8 = [(NSData *)self->_digest copy];
  v9 = [(NSData *)self->_signature copy];
  v10 = [(NSData *)self->_certificate copy];
  v11 = [(CSVoiceTriggerRTModel *)v4 initWithData:v5 hash:v6 locale:v7 digest:v8 signature:v9 certificate:v10];

  return v11;
}

- (CSVoiceTriggerRTModel)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = CSVoiceTriggerRTModel;
  v5 = [(CSVoiceTriggerRTModel *)&v19 init];
  if (v5)
  {
    if ([v4 containsValueForKey:@"RTModelData"])
    {
      v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"RTModelData"];
      modelData = v5->_modelData;
      v5->_modelData = v6;
    }

    if ([v4 containsValueForKey:@"RTModelHash"])
    {
      v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"RTModelHash"];
      modelHash = v5->_modelHash;
      v5->_modelHash = v8;
    }

    if ([v4 containsValueForKey:@"RTModelLocale"])
    {
      v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"RTModelLocale"];
      modelLocale = v5->_modelLocale;
      v5->_modelLocale = v10;
    }

    if ([v4 containsValueForKey:@"RTModelDigest"])
    {
      v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"RTModelDigest"];
      digest = v5->_digest;
      v5->_digest = v12;
    }

    if ([v4 containsValueForKey:@"RTModelSignature"])
    {
      v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"RTModelSignature"];
      signature = v5->_signature;
      v5->_signature = v14;
    }

    if ([v4 containsValueForKey:@"RTModelCertificate"])
    {
      v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"RTModelCertificate"];
      certificate = v5->_certificate;
      v5->_certificate = v16;
    }
  }

  return v5;
}

- (CSVoiceTriggerRTModel)initWithData:(id)a3 hash:(id)a4 locale:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = CSVoiceTriggerRTModel;
  v12 = [(CSVoiceTriggerRTModel *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_modelData, a3);
    objc_storeStrong(&v13->_modelHash, a4);
    objc_storeStrong(&v13->_modelLocale, a5);
  }

  return v13;
}

- (CSVoiceTriggerRTModel)initWithHash:(id)a3 locale:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CSVoiceTriggerRTModel;
  v9 = [(CSVoiceTriggerRTModel *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_modelHash, a3);
    objc_storeStrong(&v10->_modelLocale, a4);
  }

  return v10;
}

- (CSVoiceTriggerRTModel)initWithData:(id)a3 hash:(id)a4 locale:(id)a5 digest:(id)a6 signature:(id)a7 certificate:(id)a8
{
  v23 = a3;
  v22 = a4;
  v21 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v24.receiver = self;
  v24.super_class = CSVoiceTriggerRTModel;
  v18 = [(CSVoiceTriggerRTModel *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_modelData, a3);
    objc_storeStrong(&v19->_modelHash, a4);
    objc_storeStrong(&v19->_modelLocale, a5);
    objc_storeStrong(&v19->_digest, a6);
    objc_storeStrong(&v19->_signature, a7);
    objc_storeStrong(&v19->_certificate, a8);
  }

  return v19;
}

@end
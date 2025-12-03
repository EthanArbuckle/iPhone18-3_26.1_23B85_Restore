@interface CSVoiceTriggerRTModel
- (CSVoiceTriggerRTModel)initWithCoder:(id)coder;
- (CSVoiceTriggerRTModel)initWithData:(id)data hash:(id)hash locale:(id)locale;
- (CSVoiceTriggerRTModel)initWithData:(id)data hash:(id)hash locale:(id)locale digest:(id)digest signature:(id)signature certificate:(id)certificate;
- (CSVoiceTriggerRTModel)initWithHash:(id)hash locale:(id)locale;
- (id)builtInRTModelDictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CSVoiceTriggerRTModel

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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  modelData = self->_modelData;
  v11 = coderCopy;
  if (modelData)
  {
    [coderCopy encodeObject:modelData forKey:@"RTModelData"];
    coderCopy = v11;
  }

  modelHash = self->_modelHash;
  if (modelHash)
  {
    [v11 encodeObject:modelHash forKey:@"RTModelHash"];
    coderCopy = v11;
  }

  modelLocale = self->_modelLocale;
  if (modelLocale)
  {
    [v11 encodeObject:modelLocale forKey:@"RTModelLocale"];
    coderCopy = v11;
  }

  digest = self->_digest;
  if (digest)
  {
    [v11 encodeObject:digest forKey:@"RTModelDigest"];
    coderCopy = v11;
  }

  signature = self->_signature;
  if (signature)
  {
    [v11 encodeObject:signature forKey:@"RTModelSignature"];
    coderCopy = v11;
  }

  certificate = self->_certificate;
  if (certificate)
  {
    [v11 encodeObject:certificate forKey:@"RTModelCertificate"];
    coderCopy = v11;
  }
}

- (id)copyWithZone:(_NSZone *)zone
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

- (CSVoiceTriggerRTModel)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = CSVoiceTriggerRTModel;
  v5 = [(CSVoiceTriggerRTModel *)&v19 init];
  if (v5)
  {
    if ([coderCopy containsValueForKey:@"RTModelData"])
    {
      v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"RTModelData"];
      modelData = v5->_modelData;
      v5->_modelData = v6;
    }

    if ([coderCopy containsValueForKey:@"RTModelHash"])
    {
      v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"RTModelHash"];
      modelHash = v5->_modelHash;
      v5->_modelHash = v8;
    }

    if ([coderCopy containsValueForKey:@"RTModelLocale"])
    {
      v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"RTModelLocale"];
      modelLocale = v5->_modelLocale;
      v5->_modelLocale = v10;
    }

    if ([coderCopy containsValueForKey:@"RTModelDigest"])
    {
      v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"RTModelDigest"];
      digest = v5->_digest;
      v5->_digest = v12;
    }

    if ([coderCopy containsValueForKey:@"RTModelSignature"])
    {
      v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"RTModelSignature"];
      signature = v5->_signature;
      v5->_signature = v14;
    }

    if ([coderCopy containsValueForKey:@"RTModelCertificate"])
    {
      v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"RTModelCertificate"];
      certificate = v5->_certificate;
      v5->_certificate = v16;
    }
  }

  return v5;
}

- (CSVoiceTriggerRTModel)initWithData:(id)data hash:(id)hash locale:(id)locale
{
  dataCopy = data;
  hashCopy = hash;
  localeCopy = locale;
  v15.receiver = self;
  v15.super_class = CSVoiceTriggerRTModel;
  v12 = [(CSVoiceTriggerRTModel *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_modelData, data);
    objc_storeStrong(&v13->_modelHash, hash);
    objc_storeStrong(&v13->_modelLocale, locale);
  }

  return v13;
}

- (CSVoiceTriggerRTModel)initWithHash:(id)hash locale:(id)locale
{
  hashCopy = hash;
  localeCopy = locale;
  v12.receiver = self;
  v12.super_class = CSVoiceTriggerRTModel;
  v9 = [(CSVoiceTriggerRTModel *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_modelHash, hash);
    objc_storeStrong(&v10->_modelLocale, locale);
  }

  return v10;
}

- (CSVoiceTriggerRTModel)initWithData:(id)data hash:(id)hash locale:(id)locale digest:(id)digest signature:(id)signature certificate:(id)certificate
{
  dataCopy = data;
  hashCopy = hash;
  localeCopy = locale;
  digestCopy = digest;
  signatureCopy = signature;
  certificateCopy = certificate;
  v24.receiver = self;
  v24.super_class = CSVoiceTriggerRTModel;
  v18 = [(CSVoiceTriggerRTModel *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_modelData, data);
    objc_storeStrong(&v19->_modelHash, hash);
    objc_storeStrong(&v19->_modelLocale, locale);
    objc_storeStrong(&v19->_digest, digest);
    objc_storeStrong(&v19->_signature, signature);
    objc_storeStrong(&v19->_certificate, certificate);
  }

  return v19;
}

@end
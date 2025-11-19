@interface DNDAccountFeatureSupport
- (DNDAccountFeatureSupport)initWithCoder:(id)a3;
- (id)_initWithCloud:(unint64_t)a3 hasCloud:(BOOL)a4 paired:(unint64_t)a5 hasPaired:(BOOL)a6;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DNDAccountFeatureSupport

- (id)_initWithCloud:(unint64_t)a3 hasCloud:(BOOL)a4 paired:(unint64_t)a5 hasPaired:(BOOL)a6
{
  v11.receiver = self;
  v11.super_class = DNDAccountFeatureSupport;
  result = [(DNDAccountFeatureSupport *)&v11 init];
  if (result)
  {
    *(result + 8) = a4;
    *(result + 2) = a3;
    *(result + 3) = a5;
    *(result + 9) = a6;
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  hasCloudDevices = self->_hasCloudDevices;
  if (hasCloudDevices)
  {
    v5 = DNDStringFromSupportedAccountFeatures(self->_cloudFeatures);
  }

  else
  {
    v5 = @"<N/A>";
  }

  if (!self->_hasPairedDevices)
  {
    v7 = [v3 stringWithFormat:@"cloud: %@ paired: %@;", v5, @"<N/A>"];;
    if (!hasCloudDevices)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v6 = DNDStringFromSupportedAccountFeatures(self->_pairedFeatures);
  v7 = [v3 stringWithFormat:@"cloud: %@ paired: %@;", v5, v6];;

  if (hasCloudDevices)
  {
LABEL_8:
  }

LABEL_9:

  return v7;
}

- (DNDAccountFeatureSupport)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cloud"];
  v6 = [v4 decodeBoolForKey:@"hasCloud"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"paired"];
  v8 = [v4 decodeBoolForKey:@"hasPaired"];

  v9 = -[DNDAccountFeatureSupport _initWithCloud:hasCloud:paired:hasPaired:](self, "_initWithCloud:hasCloud:paired:hasPaired:", [v5 unsignedIntegerValue], v6, objc_msgSend(v7, "unsignedIntegerValue"), v8);
  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x277CCABB0];
  cloudFeatures = self->_cloudFeatures;
  v8 = a3;
  v6 = [v4 numberWithUnsignedInteger:cloudFeatures];
  [v8 encodeObject:v6 forKey:@"cloud"];

  [v8 encodeBool:self->_hasCloudDevices forKey:@"hasCloud"];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_pairedFeatures];
  [v8 encodeObject:v7 forKey:@"paired"];

  [v8 encodeBool:self->_hasPairedDevices forKey:@"hasPaired"];
}

@end
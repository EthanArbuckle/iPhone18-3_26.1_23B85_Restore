@interface DNDAccountFeatureSupport
- (DNDAccountFeatureSupport)initWithCoder:(id)coder;
- (id)_initWithCloud:(unint64_t)cloud hasCloud:(BOOL)hasCloud paired:(unint64_t)paired hasPaired:(BOOL)hasPaired;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DNDAccountFeatureSupport

- (id)_initWithCloud:(unint64_t)cloud hasCloud:(BOOL)hasCloud paired:(unint64_t)paired hasPaired:(BOOL)hasPaired
{
  v11.receiver = self;
  v11.super_class = DNDAccountFeatureSupport;
  result = [(DNDAccountFeatureSupport *)&v11 init];
  if (result)
  {
    *(result + 8) = hasCloud;
    *(result + 2) = cloud;
    *(result + 3) = paired;
    *(result + 9) = hasPaired;
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

- (DNDAccountFeatureSupport)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cloud"];
  v6 = [coderCopy decodeBoolForKey:@"hasCloud"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"paired"];
  v8 = [coderCopy decodeBoolForKey:@"hasPaired"];

  v9 = -[DNDAccountFeatureSupport _initWithCloud:hasCloud:paired:hasPaired:](self, "_initWithCloud:hasCloud:paired:hasPaired:", [v5 unsignedIntegerValue], v6, objc_msgSend(v7, "unsignedIntegerValue"), v8);
  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x277CCABB0];
  cloudFeatures = self->_cloudFeatures;
  coderCopy = coder;
  v6 = [v4 numberWithUnsignedInteger:cloudFeatures];
  [coderCopy encodeObject:v6 forKey:@"cloud"];

  [coderCopy encodeBool:self->_hasCloudDevices forKey:@"hasCloud"];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_pairedFeatures];
  [coderCopy encodeObject:v7 forKey:@"paired"];

  [coderCopy encodeBool:self->_hasPairedDevices forKey:@"hasPaired"];
}

@end
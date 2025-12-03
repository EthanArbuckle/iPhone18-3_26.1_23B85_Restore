@interface IXDefaultAppMetadata
- (BOOL)isEqual:(id)equal;
- (IXDefaultAppMetadata)initWithAppIdentity:(id)identity appType:(unint64_t)type offloadAnswer:(unint64_t)answer;
- (IXDefaultAppMetadata)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IXDefaultAppMetadata

- (IXDefaultAppMetadata)initWithAppIdentity:(id)identity appType:(unint64_t)type offloadAnswer:(unint64_t)answer
{
  identityCopy = identity;
  v13.receiver = self;
  v13.super_class = IXDefaultAppMetadata;
  v10 = [(IXDefaultAppMetadata *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_identity, identity);
    v11->_appType = type;
    v11->_offloadAnswer = answer;
  }

  return v11;
}

- (id)dictionaryRepresentation
{
  v8[0] = @"bundleID";
  identity = [(IXDefaultAppMetadata *)self identity];
  v9[0] = identity;
  v8[1] = @"appType";
  v4 = [NSNumber numberWithUnsignedInteger:[(IXDefaultAppMetadata *)self appType]];
  v9[1] = v4;
  v8[2] = @"offloadAnswer";
  v5 = [NSNumber numberWithUnsignedInteger:[(IXDefaultAppMetadata *)self offloadAnswer]];
  v9[2] = v5;
  v6 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:3];

  return v6;
}

- (id)description
{
  dictionaryRepresentation = [(IXDefaultAppMetadata *)self dictionaryRepresentation];
  v3 = [dictionaryRepresentation description];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    if (equalCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
        identity = [(IXDefaultAppMetadata *)self identity];
        identity2 = [(IXDefaultAppMetadata *)v6 identity];
        if ([identity isEqual:identity2] && (v9 = -[IXDefaultAppMetadata appType](self, "appType"), v9 == -[IXDefaultAppMetadata appType](v6, "appType")))
        {
          offloadAnswer = [(IXDefaultAppMetadata *)self offloadAnswer];
          offloadAnswer2 = [(IXDefaultAppMetadata *)v6 offloadAnswer];

          if (offloadAnswer == offloadAnswer2)
          {
            v12 = 1;
LABEL_12:

            goto LABEL_13;
          }
        }

        else
        {
        }

        v12 = 0;
        goto LABEL_12;
      }
    }

    v12 = 0;
  }

LABEL_13:

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  identity = [(IXDefaultAppMetadata *)self identity];
  v6 = [v4 initWithAppIdentity:identity appType:-[IXDefaultAppMetadata appType](self offloadAnswer:{"appType"), -[IXDefaultAppMetadata offloadAnswer](self, "offloadAnswer")}];

  return v6;
}

- (unint64_t)hash
{
  identity = [(IXDefaultAppMetadata *)self identity];
  v4 = [identity hash];
  appType = [(IXDefaultAppMetadata *)self appType];
  v6 = appType ^ [(IXDefaultAppMetadata *)self offloadAnswer];

  return v6 ^ v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identity = [(IXDefaultAppMetadata *)self identity];
  [coderCopy encodeObject:identity forKey:@"identity"];

  v6 = [NSNumber numberWithUnsignedInteger:[(IXDefaultAppMetadata *)self appType]];
  [coderCopy encodeObject:v6 forKey:@"appType"];

  v7 = [NSNumber numberWithUnsignedInteger:[(IXDefaultAppMetadata *)self offloadAnswer]];
  [coderCopy encodeObject:v7 forKey:@"offloadAnswer"];
}

- (IXDefaultAppMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = IXDefaultAppMetadata;
  v5 = [(IXDefaultAppMetadata *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identity"];
    identity = v5->_identity;
    v5->_identity = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appType"];
    v5->_appType = [v8 unsignedLongLongValue];

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"offloadAnswer"];
    v5->_offloadAnswer = [v9 unsignedLongLongValue];
  }

  return v5;
}

@end
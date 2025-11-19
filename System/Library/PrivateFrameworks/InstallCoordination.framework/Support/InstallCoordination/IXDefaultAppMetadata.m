@interface IXDefaultAppMetadata
- (BOOL)isEqual:(id)a3;
- (IXDefaultAppMetadata)initWithAppIdentity:(id)a3 appType:(unint64_t)a4 offloadAnswer:(unint64_t)a5;
- (IXDefaultAppMetadata)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IXDefaultAppMetadata

- (IXDefaultAppMetadata)initWithAppIdentity:(id)a3 appType:(unint64_t)a4 offloadAnswer:(unint64_t)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = IXDefaultAppMetadata;
  v10 = [(IXDefaultAppMetadata *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_identity, a3);
    v11->_appType = a4;
    v11->_offloadAnswer = a5;
  }

  return v11;
}

- (id)dictionaryRepresentation
{
  v8[0] = @"bundleID";
  v3 = [(IXDefaultAppMetadata *)self identity];
  v9[0] = v3;
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
  v2 = [(IXDefaultAppMetadata *)self dictionaryRepresentation];
  v3 = [v2 description];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v12 = 1;
  }

  else
  {
    if (v4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
        v7 = [(IXDefaultAppMetadata *)self identity];
        v8 = [(IXDefaultAppMetadata *)v6 identity];
        if ([v7 isEqual:v8] && (v9 = -[IXDefaultAppMetadata appType](self, "appType"), v9 == -[IXDefaultAppMetadata appType](v6, "appType")))
        {
          v10 = [(IXDefaultAppMetadata *)self offloadAnswer];
          v11 = [(IXDefaultAppMetadata *)v6 offloadAnswer];

          if (v10 == v11)
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(IXDefaultAppMetadata *)self identity];
  v6 = [v4 initWithAppIdentity:v5 appType:-[IXDefaultAppMetadata appType](self offloadAnswer:{"appType"), -[IXDefaultAppMetadata offloadAnswer](self, "offloadAnswer")}];

  return v6;
}

- (unint64_t)hash
{
  v3 = [(IXDefaultAppMetadata *)self identity];
  v4 = [v3 hash];
  v5 = [(IXDefaultAppMetadata *)self appType];
  v6 = v5 ^ [(IXDefaultAppMetadata *)self offloadAnswer];

  return v6 ^ v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(IXDefaultAppMetadata *)self identity];
  [v4 encodeObject:v5 forKey:@"identity"];

  v6 = [NSNumber numberWithUnsignedInteger:[(IXDefaultAppMetadata *)self appType]];
  [v4 encodeObject:v6 forKey:@"appType"];

  v7 = [NSNumber numberWithUnsignedInteger:[(IXDefaultAppMetadata *)self offloadAnswer]];
  [v4 encodeObject:v7 forKey:@"offloadAnswer"];
}

- (IXDefaultAppMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = IXDefaultAppMetadata;
  v5 = [(IXDefaultAppMetadata *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identity"];
    identity = v5->_identity;
    v5->_identity = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"appType"];
    v5->_appType = [v8 unsignedLongLongValue];

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"offloadAnswer"];
    v5->_offloadAnswer = [v9 unsignedLongLongValue];
  }

  return v5;
}

@end
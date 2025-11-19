@interface IXAppInstallCoordinatorSeed
- (IXAppInstallCoordinatorSeed)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IXAppInstallCoordinatorSeed

- (IXAppInstallCoordinatorSeed)initWithCoder:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = IXAppInstallCoordinatorSeed;
  v5 = [(IXAppInstallCoordinatorSeed *)&v20 init];
  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uniqueIdentifier"];
  v7 = *(v5 + 2);
  *(v5 + 2) = v6;

  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"creator"];
  *(v5 + 3) = [v8 unsignedLongLongValue];

  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"creatorEUID"];
  *(v5 + 2) = [v9 unsignedIntegerValue];

  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"intent"];
  *(v5 + 4) = [v10 unsignedLongLongValue];

  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identity"];
  v12 = *(v5 + 5);
  *(v5 + 5) = v11;

  if (!*(v5 + 5))
  {
    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleID"];
    if (v16)
    {
      v17 = [[IXApplicationIdentity alloc] initWithBundleIdentifier:v16];
      v18 = *(v5 + 5);
      *(v5 + 5) = v17;

      if (*(v5 + 5))
      {

        goto LABEL_3;
      }

      v19 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
      {
        sub_1000A34DC(v16, v5 + 2, v19);
      }
    }

    else
    {
      v19 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
      {
        sub_1000A3578(v5, v19);
      }
    }

    v14 = 0;
    goto LABEL_7;
  }

LABEL_3:
  if ([v4 containsValueForKey:@"installationDomain"])
  {
    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"installationDomain"];
    *(v5 + 6) = [v13 unsignedIntegerValue];
  }

  else
  {
    *(v5 + 6) = 1;
  }

LABEL_6:
  v14 = v5;
LABEL_7:

  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(IXAppInstallCoordinatorSeed *)self uniqueIdentifier];
  [v4 encodeObject:v5 forKey:@"uniqueIdentifier"];

  v6 = [NSNumber numberWithUnsignedInteger:[(IXAppInstallCoordinatorSeed *)self creator]];
  [v4 encodeObject:v6 forKey:@"creator"];

  v7 = [NSNumber numberWithUnsignedInt:[(IXAppInstallCoordinatorSeed *)self creatorEUID]];
  [v4 encodeObject:v7 forKey:@"creatorEUID"];

  v8 = [NSNumber numberWithUnsignedInteger:[(IXAppInstallCoordinatorSeed *)self intent]];
  [v4 encodeObject:v8 forKey:@"intent"];

  v9 = [(IXAppInstallCoordinatorSeed *)self identity];
  [v4 encodeObject:v9 forKey:@"identity"];

  v10 = [NSNumber numberWithUnsignedInteger:[(IXAppInstallCoordinatorSeed *)self installationDomain]];
  [v4 encodeObject:v10 forKey:@"installationDomain"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(IXAppInstallCoordinatorSeed *)self uniqueIdentifier];
  [v4 setUniqueIdentifier:v5];

  [v4 setCreator:{-[IXAppInstallCoordinatorSeed creator](self, "creator")}];
  [v4 setCreatorEUID:{-[IXAppInstallCoordinatorSeed creatorEUID](self, "creatorEUID")}];
  [v4 setIntent:{-[IXAppInstallCoordinatorSeed intent](self, "intent")}];
  v6 = [(IXAppInstallCoordinatorSeed *)self identity];
  [v4 setIdentity:v6];

  [v4 setInstallationDomain:{-[IXAppInstallCoordinatorSeed installationDomain](self, "installationDomain")}];
  return v4;
}

@end
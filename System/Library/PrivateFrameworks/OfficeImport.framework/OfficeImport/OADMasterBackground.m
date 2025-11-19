@interface OADMasterBackground
+ (id)masterBackground;
- (BOOL)isEqual:(id)a3;
- (unint64_t)hash;
@end

@implementation OADMasterBackground

+ (id)masterBackground
{
  v2 = +[OADMasterBackground masterBackground]::theMasterBackground;
  if (!+[OADMasterBackground masterBackground]::theMasterBackground)
  {
    v3 = objc_alloc_init(OADMasterBackground);
    v4 = +[OADMasterBackground masterBackground]::theMasterBackground;
    +[OADMasterBackground masterBackground]::theMasterBackground = v3;

    v2 = +[OADMasterBackground masterBackground]::theMasterBackground;
  }

  return v2;
}

- (BOOL)isEqual:(id)a3
{
  v3 = a3;
  v4 = [v3 isMemberOfClass:objc_opt_class()];

  return v4;
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = OADMasterBackground;
  return [(OADMasterBackground *)&v3 hash];
}

@end
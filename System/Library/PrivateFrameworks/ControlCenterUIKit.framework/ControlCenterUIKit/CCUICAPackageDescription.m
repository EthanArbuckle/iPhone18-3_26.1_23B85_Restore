@interface CCUICAPackageDescription
+ (id)descriptionForPackageNamed:(id)a3 inBundle:(id)a4;
- (BOOL)isEqual:(id)a3;
- (CCUICAPackageDescription)initWithPackageName:(id)a3 inBundle:(id)a4;
- (NSString)description;
- (void)appendDescriptionToFormatter:(id)a3;
@end

@implementation CCUICAPackageDescription

- (CCUICAPackageDescription)initWithPackageName:(id)a3 inBundle:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = CCUICAPackageDescription;
  v8 = [(CCUICAPackageDescription *)&v12 init];
  if (v8)
  {
    v9 = [v7 URLForResource:v6 withExtension:@"ca"];
    packageURL = v8->_packageURL;
    v8->_packageURL = v9;

    v8->_honorsUIViewAnimationState = 1;
  }

  return v8;
}

+ (id)descriptionForPackageNamed:(id)a3 inBundle:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithPackageName:v7 inBundle:v6];

  return v8;
}

- (void)appendDescriptionToFormatter:(id)a3
{
  v8 = a3;
  v4 = [(NSURL *)self->_packageURL lastPathComponent];
  [v8 appendString:v4 withName:@"packageName"];

  v5 = [v8 appendBool:self->_flipsForRightToLeftLayoutDirection withName:@"flipsForRightToLeftLayoutDirection" ifEqualTo:1];
  v6 = [v8 appendBool:self->_honorsUIViewAnimationState withName:@"honorsUIViewAnimationState" ifEqualTo:0];
  v7 = [v8 appendBool:-[NSDictionary count](self->_stateUpdateHandlers withName:"count") != 0 ifEqualTo:{@"hasStateUpdateHandlers", 1}];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      if (BSEqualObjects() && BSEqualBools() && BSEqualBools())
      {
        v6 = BSEqualDictionaries();
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (NSString)description
{
  v3 = objc_alloc_init(MEMORY[0x1E698E688]);
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __39__CCUICAPackageDescription_description__block_invoke;
  v10 = &unk_1E83EA450;
  v11 = v3;
  v12 = self;
  v4 = v3;
  [v4 appendProem:0 block:&v7];
  v5 = [v4 description];

  return v5;
}

@end
@interface CCUICAPackageDescription
+ (id)descriptionForPackageNamed:(id)named inBundle:(id)bundle;
- (BOOL)isEqual:(id)equal;
- (CCUICAPackageDescription)initWithPackageName:(id)name inBundle:(id)bundle;
- (NSString)description;
- (void)appendDescriptionToFormatter:(id)formatter;
@end

@implementation CCUICAPackageDescription

- (CCUICAPackageDescription)initWithPackageName:(id)name inBundle:(id)bundle
{
  nameCopy = name;
  bundleCopy = bundle;
  v12.receiver = self;
  v12.super_class = CCUICAPackageDescription;
  v8 = [(CCUICAPackageDescription *)&v12 init];
  if (v8)
  {
    v9 = [bundleCopy URLForResource:nameCopy withExtension:@"ca"];
    packageURL = v8->_packageURL;
    v8->_packageURL = v9;

    v8->_honorsUIViewAnimationState = 1;
  }

  return v8;
}

+ (id)descriptionForPackageNamed:(id)named inBundle:(id)bundle
{
  bundleCopy = bundle;
  namedCopy = named;
  v8 = [[self alloc] initWithPackageName:namedCopy inBundle:bundleCopy];

  return v8;
}

- (void)appendDescriptionToFormatter:(id)formatter
{
  formatterCopy = formatter;
  lastPathComponent = [(NSURL *)self->_packageURL lastPathComponent];
  [formatterCopy appendString:lastPathComponent withName:@"packageName"];

  v5 = [formatterCopy appendBool:self->_flipsForRightToLeftLayoutDirection withName:@"flipsForRightToLeftLayoutDirection" ifEqualTo:1];
  v6 = [formatterCopy appendBool:self->_honorsUIViewAnimationState withName:@"honorsUIViewAnimationState" ifEqualTo:0];
  v7 = [formatterCopy appendBool:-[NSDictionary count](self->_stateUpdateHandlers withName:"count") != 0 ifEqualTo:{@"hasStateUpdateHandlers", 1}];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
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
  selfCopy = self;
  v4 = v3;
  [v4 appendProem:0 block:&v7];
  v5 = [v4 description];

  return v5;
}

@end
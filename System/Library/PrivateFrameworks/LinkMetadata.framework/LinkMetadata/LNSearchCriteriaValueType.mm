@interface LNSearchCriteriaValueType
+ (LNSearchCriteriaValueType)stringValueType;
+ (id)objectClassesForCoding;
+ (id)supportedClassesByTypeIdentifier;
- (BOOL)isEqual:(id)equal;
- (Class)objectClass;
- (LNSearchCriteriaValueType)initWithCoder:(id)coder;
- (LNSearchCriteriaValueType)initWithTypeIdentifier:(int64_t)identifier;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNSearchCriteriaValueType

- (unint64_t)hash
{
  v5.receiver = self;
  v5.super_class = LNSearchCriteriaValueType;
  v3 = [(LNValueType *)&v5 hash];
  return [(LNSearchCriteriaValueType *)self typeIdentifier]^ v3;
}

+ (LNSearchCriteriaValueType)stringValueType
{
  if (stringValueType_onceToken != -1)
  {
    dispatch_once(&stringValueType_onceToken, &__block_literal_global);
  }

  v3 = stringValueType_value;

  return v3;
}

+ (id)objectClassesForCoding
{
  supportedClassesByTypeIdentifier = [self supportedClassesByTypeIdentifier];
  allValues = [supportedClassesByTypeIdentifier allValues];

  return allValues;
}

+ (id)supportedClassesByTypeIdentifier
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = &unk_1F02FED18;
  v6[0] = objc_opt_class();
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v8 = 1;
    goto LABEL_10;
  }

  v6 = equalCopy;
  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

    v6 = 0;
    goto LABEL_7;
  }

  v10.receiver = self;
  v10.super_class = LNSearchCriteriaValueType;
  if (![(LNValueType *)&v10 isEqual:v6])
  {
LABEL_7:
    v8 = 0;
    goto LABEL_8;
  }

  typeIdentifier = [(LNSearchCriteriaValueType *)self typeIdentifier];
  v8 = typeIdentifier == [(LNSearchCriteriaValueType *)v6 typeIdentifier];
LABEL_8:

LABEL_10:
  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = LNSearchCriteriaValueType;
  coderCopy = coder;
  [(LNValueType *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:-[LNSearchCriteriaValueType typeIdentifier](self forKey:{"typeIdentifier", v5.receiver, v5.super_class), @"typeIdentifier"}];
}

- (LNSearchCriteriaValueType)initWithCoder:(id)coder
{
  v4 = [coder decodeIntegerForKey:@"typeIdentifier"];

  return [(LNSearchCriteriaValueType *)self initWithTypeIdentifier:v4];
}

- (Class)objectClass
{
  supportedClassesByTypeIdentifier = [objc_opt_class() supportedClassesByTypeIdentifier];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:{-[LNSearchCriteriaValueType typeIdentifier](self, "typeIdentifier")}];
  v5 = [supportedClassesByTypeIdentifier objectForKeyedSubscript:v4];

  return v5;
}

- (LNSearchCriteriaValueType)initWithTypeIdentifier:(int64_t)identifier
{
  v8.receiver = self;
  v8.super_class = LNSearchCriteriaValueType;
  v4 = [(LNValueType *)&v8 initWithContentType:0];
  v5 = v4;
  if (v4)
  {
    v4->_typeIdentifier = identifier;
    v6 = v4;
  }

  return v5;
}

uint64_t __44__LNSearchCriteriaValueType_stringValueType__block_invoke()
{
  stringValueType_value = [[LNSearchCriteriaValueType alloc] initWithTypeIdentifier:0];

  return MEMORY[0x1EEE66BB8]();
}

@end
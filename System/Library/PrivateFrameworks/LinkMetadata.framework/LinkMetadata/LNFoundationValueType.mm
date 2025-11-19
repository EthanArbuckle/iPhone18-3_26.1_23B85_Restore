@interface LNFoundationValueType
+ (LNFoundationValueType)recurrenceRuleType;
+ (id)objectClassesForCoding;
+ (id)supportedClassesByTypeIdentifier;
- (BOOL)isEqual:(id)a3;
- (Class)objectClass;
- (LNFoundationValueType)initWithCoder:(id)a3;
- (LNFoundationValueType)initWithTypeIdentifier:(int64_t)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNFoundationValueType

+ (LNFoundationValueType)recurrenceRuleType
{
  if (recurrenceRuleType_onceToken != -1)
  {
    dispatch_once(&recurrenceRuleType_onceToken, &__block_literal_global_218);
  }

  v3 = recurrenceRuleType_value;

  return v3;
}

- (unint64_t)hash
{
  v5.receiver = self;
  v5.super_class = LNFoundationValueType;
  v3 = [(LNValueType *)&v5 hash];
  return [(LNFoundationValueType *)self typeIdentifier]^ v3;
}

uint64_t __43__LNFoundationValueType_recurrenceRuleType__block_invoke()
{
  recurrenceRuleType_value = [[LNFoundationValueType alloc] initWithTypeIdentifier:0];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)supportedClassesByTypeIdentifier
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = &unk_1F02FED30;
  v6[0] = objc_opt_class();
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

+ (id)objectClassesForCoding
{
  v2 = [a1 supportedClassesByTypeIdentifier];
  v3 = [v2 allValues];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v8 = 1;
    goto LABEL_10;
  }

  v6 = v4;
  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

    v6 = 0;
    goto LABEL_7;
  }

  v10.receiver = self;
  v10.super_class = LNFoundationValueType;
  if (![(LNValueType *)&v10 isEqual:v6])
  {
LABEL_7:
    v8 = 0;
    goto LABEL_8;
  }

  v7 = [(LNFoundationValueType *)self typeIdentifier];
  v8 = v7 == [(LNFoundationValueType *)v6 typeIdentifier];
LABEL_8:

LABEL_10:
  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = LNFoundationValueType;
  v4 = a3;
  [(LNValueType *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:-[LNFoundationValueType typeIdentifier](self forKey:{"typeIdentifier", v5.receiver, v5.super_class), @"typeIdentifier"}];
}

- (LNFoundationValueType)initWithCoder:(id)a3
{
  v4 = [a3 decodeIntegerForKey:@"typeIdentifier"];

  return [(LNFoundationValueType *)self initWithTypeIdentifier:v4];
}

- (LNFoundationValueType)initWithTypeIdentifier:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = LNFoundationValueType;
  result = [(LNValueType *)&v5 initWithContentType:0];
  if (result)
  {
    result->_typeIdentifier = a3;
  }

  return result;
}

- (Class)objectClass
{
  v3 = [objc_opt_class() supportedClassesByTypeIdentifier];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:{-[LNFoundationValueType typeIdentifier](self, "typeIdentifier")}];
  v5 = [v3 objectForKeyedSubscript:v4];

  return v5;
}

@end
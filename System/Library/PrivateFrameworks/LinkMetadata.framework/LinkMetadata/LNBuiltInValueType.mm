@interface LNBuiltInValueType
+ (LNBuiltInValueType)intentToggleOperationValueType;
+ (LNBuiltInValueType)intentToggleStateValueType;
+ (LNBuiltInValueType)photoItemCollectionValueType;
+ (id)objectClassesForCoding;
+ (id)supportedClassesByTypeIdentifier;
- (BOOL)isEqual:(id)a3;
- (Class)objectClass;
- (LNBuiltInValueType)initWithBuiltInType:(int64_t)a3;
- (LNBuiltInValueType)initWithCoder:(id)a3;
- (id)typeIdentifierAsString;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNBuiltInValueType

+ (LNBuiltInValueType)photoItemCollectionValueType
{
  if (photoItemCollectionValueType_onceToken != -1)
  {
    dispatch_once(&photoItemCollectionValueType_onceToken, &__block_literal_global_4_4263);
  }

  v3 = photoItemCollectionValueType_value;

  return v3;
}

- (unint64_t)hash
{
  v5.receiver = self;
  v5.super_class = LNBuiltInValueType;
  v3 = [(LNValueType *)&v5 hash];
  return [(LNBuiltInValueType *)self builtInType]^ v3;
}

+ (id)objectClassesForCoding
{
  v2 = [a1 supportedClassesByTypeIdentifier];
  v3 = [v2 allValues];

  return v3;
}

+ (id)supportedClassesByTypeIdentifier
{
  v6[3] = *MEMORY[0x1E69E9840];
  v5[0] = &unk_1F02FF048;
  v6[0] = objc_opt_class();
  v5[1] = &unk_1F02FF060;
  v6[1] = objc_opt_class();
  v5[2] = &unk_1F02FF078;
  v6[2] = objc_opt_class();
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:3];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

+ (LNBuiltInValueType)intentToggleStateValueType
{
  if (intentToggleStateValueType_onceToken != -1)
  {
    dispatch_once(&intentToggleStateValueType_onceToken, &__block_literal_global_2_4265);
  }

  v3 = intentToggleStateValueType_value;

  return v3;
}

uint64_t __50__LNBuiltInValueType_photoItemCollectionValueType__block_invoke()
{
  photoItemCollectionValueType_value = [[LNBuiltInValueType alloc] initWithBuiltInType:2];

  return MEMORY[0x1EEE66BB8]();
}

+ (LNBuiltInValueType)intentToggleOperationValueType
{
  if (intentToggleOperationValueType_onceToken != -1)
  {
    dispatch_once(&intentToggleOperationValueType_onceToken, &__block_literal_global_4267);
  }

  v3 = intentToggleOperationValueType_value;

  return v3;
}

uint64_t __52__LNBuiltInValueType_intentToggleOperationValueType__block_invoke()
{
  intentToggleOperationValueType_value = [[LNBuiltInValueType alloc] initWithBuiltInType:0];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __48__LNBuiltInValueType_intentToggleStateValueType__block_invoke()
{
  intentToggleStateValueType_value = [[LNBuiltInValueType alloc] initWithBuiltInType:1];

  return MEMORY[0x1EEE66BB8]();
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
  v10.super_class = LNBuiltInValueType;
  if (![(LNValueType *)&v10 isEqual:v6])
  {
LABEL_7:
    v8 = 0;
    goto LABEL_8;
  }

  v7 = [(LNBuiltInValueType *)self builtInType];
  v8 = v7 == [(LNBuiltInValueType *)v6 builtInType];
LABEL_8:

LABEL_10:
  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = LNBuiltInValueType;
  v4 = a3;
  [(LNValueType *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:-[LNBuiltInValueType builtInType](self forKey:{"builtInType", v5.receiver, v5.super_class), @"builtInType"}];
}

- (LNBuiltInValueType)initWithCoder:(id)a3
{
  v4 = [a3 decodeIntegerForKey:@"builtInType"];

  return [(LNBuiltInValueType *)self initWithBuiltInType:v4];
}

- (id)typeIdentifierAsString
{
  v2 = [(LNBuiltInValueType *)self builtInType];
  v3 = @"Intent Change Operation";
  if (v2 == 1)
  {
    v3 = @"Toggle Activation";
  }

  if (v2 == 2)
  {
    v4 = @"Photo Collection";
  }

  else
  {
    v4 = v3;
  }

  return v4;
}

- (Class)objectClass
{
  v3 = [objc_opt_class() supportedClassesByTypeIdentifier];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:{-[LNBuiltInValueType builtInType](self, "builtInType")}];
  v5 = [v3 objectForKeyedSubscript:v4];

  return v5;
}

- (LNBuiltInValueType)initWithBuiltInType:(int64_t)a3
{
  v8.receiver = self;
  v8.super_class = LNBuiltInValueType;
  v4 = [(LNValueType *)&v8 initWithContentType:0];
  v5 = v4;
  if (v4)
  {
    v4->_builtInType = a3;
    v6 = v4;
  }

  return v5;
}

@end
@interface LNPrimitiveValueType
+ (LNPrimitiveValueType)BOOLValueType;
+ (LNPrimitiveValueType)URLValueType;
+ (LNPrimitiveValueType)attributedStringValueType;
+ (LNPrimitiveValueType)dateComponentsValueType;
+ (LNPrimitiveValueType)dateValueType;
+ (LNPrimitiveValueType)doubleValueType;
+ (LNPrimitiveValueType)int16ValueType;
+ (LNPrimitiveValueType)int32ValueType;
+ (LNPrimitiveValueType)int64ValueType;
+ (LNPrimitiveValueType)int8ValueType;
+ (LNPrimitiveValueType)intValueType;
+ (LNPrimitiveValueType)placemarkValueType;
+ (LNPrimitiveValueType)stringValueType;
+ (id)objectClassesForCoding;
+ (id)supportedClassesByTypeIdentifier;
- (BOOL)isEqual:(id)a3;
- (Class)objectClass;
- (LNPrimitiveValueType)initWithCoder:(id)a3;
- (LNPrimitiveValueType)initWithTypeIdentifier:(int64_t)a3;
- (NSString)typeIdentifierAsString;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNPrimitiveValueType

- (Class)objectClass
{
  v3 = [objc_opt_class() supportedClassesByTypeIdentifier];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:{-[LNPrimitiveValueType typeIdentifier](self, "typeIdentifier")}];
  v5 = [v3 objectForKeyedSubscript:v4];

  return v5;
}

+ (id)supportedClassesByTypeIdentifier
{
  v6[13] = *MEMORY[0x1E69E9840];
  v5[0] = &unk_1F02FED48;
  v6[0] = objc_opt_class();
  v5[1] = &unk_1F02FED60;
  v6[1] = objc_opt_class();
  v5[2] = &unk_1F02FED78;
  v6[2] = objc_opt_class();
  v5[3] = &unk_1F02FED90;
  v6[3] = objc_opt_class();
  v5[4] = &unk_1F02FEDA8;
  v6[4] = objc_opt_class();
  v5[5] = &unk_1F02FEDC0;
  v6[5] = objc_opt_class();
  v5[6] = &unk_1F02FEDD8;
  v6[6] = objc_opt_class();
  v5[7] = &unk_1F02FEDF0;
  v6[7] = objc_opt_class();
  v5[8] = &unk_1F02FEE08;
  v6[8] = objc_opt_class();
  v5[9] = &unk_1F02FEE20;
  v6[9] = objc_opt_class();
  v5[10] = &unk_1F02FEE38;
  v6[10] = objc_opt_class();
  v5[11] = &unk_1F02FEE50;
  v6[11] = objc_opt_class();
  v5[12] = &unk_1F02FEE68;
  v6[12] = objc_opt_class();
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:13];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

uint64_t __37__LNPrimitiveValueType_BOOLValueType__block_invoke()
{
  BOOLValueType_value = [[LNPrimitiveValueType alloc] initWithTypeIdentifier:1];

  return MEMORY[0x1EEE66BB8]();
}

+ (LNPrimitiveValueType)BOOLValueType
{
  if (BOOLValueType_onceToken[0] != -1)
  {
    dispatch_once(BOOLValueType_onceToken, &__block_literal_global_4);
  }

  v3 = BOOLValueType_value;

  return v3;
}

+ (LNPrimitiveValueType)stringValueType
{
  if (stringValueType_onceToken_963 != -1)
  {
    dispatch_once(&stringValueType_onceToken_963, &__block_literal_global_964);
  }

  v3 = stringValueType_value_965;

  return v3;
}

+ (LNPrimitiveValueType)attributedStringValueType
{
  if (attributedStringValueType_onceToken[0] != -1)
  {
    dispatch_once(attributedStringValueType_onceToken, &__block_literal_global_2);
  }

  v3 = attributedStringValueType_value;

  return v3;
}

+ (LNPrimitiveValueType)intValueType
{
  if (intValueType_onceToken != -1)
  {
    dispatch_once(&intValueType_onceToken, &__block_literal_global_6);
  }

  v3 = intValueType_value;

  return v3;
}

+ (LNPrimitiveValueType)doubleValueType
{
  if (doubleValueType_onceToken != -1)
  {
    dispatch_once(&doubleValueType_onceToken, &__block_literal_global_16);
  }

  v3 = doubleValueType_value;

  return v3;
}

+ (LNPrimitiveValueType)dateValueType
{
  if (dateValueType_onceToken != -1)
  {
    dispatch_once(&dateValueType_onceToken, &__block_literal_global_18);
  }

  v3 = dateValueType_value;

  return v3;
}

+ (LNPrimitiveValueType)dateComponentsValueType
{
  if (dateComponentsValueType_onceToken != -1)
  {
    dispatch_once(&dateComponentsValueType_onceToken, &__block_literal_global_20);
  }

  v3 = dateComponentsValueType_value;

  return v3;
}

+ (LNPrimitiveValueType)placemarkValueType
{
  if (placemarkValueType_onceToken != -1)
  {
    dispatch_once(&placemarkValueType_onceToken, &__block_literal_global_22);
  }

  v3 = placemarkValueType_value;

  return v3;
}

+ (LNPrimitiveValueType)URLValueType
{
  if (URLValueType_onceToken != -1)
  {
    dispatch_once(&URLValueType_onceToken, &__block_literal_global_24);
  }

  v3 = URLValueType_value;

  return v3;
}

- (unint64_t)hash
{
  v5.receiver = self;
  v5.super_class = LNPrimitiveValueType;
  v3 = [(LNValueType *)&v5 hash];
  return [(LNPrimitiveValueType *)self typeIdentifier]^ v3;
}

uint64_t __49__LNPrimitiveValueType_attributedStringValueType__block_invoke()
{
  attributedStringValueType_value = [[LNPrimitiveValueType alloc] initWithTypeIdentifier:12];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __39__LNPrimitiveValueType_stringValueType__block_invoke()
{
  stringValueType_value_965 = [[LNPrimitiveValueType alloc] initWithTypeIdentifier:0];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __36__LNPrimitiveValueType_intValueType__block_invoke()
{
  intValueType_value = [[LNPrimitiveValueType alloc] initWithTypeIdentifier:2];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __37__LNPrimitiveValueType_int8ValueType__block_invoke()
{
  int8ValueType_value = [[LNPrimitiveValueType alloc] initWithTypeIdentifier:3];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __39__LNPrimitiveValueType_doubleValueType__block_invoke()
{
  doubleValueType_value = [[LNPrimitiveValueType alloc] initWithTypeIdentifier:7];

  return MEMORY[0x1EEE66BB8]();
}

+ (LNPrimitiveValueType)int8ValueType
{
  if (int8ValueType_onceToken != -1)
  {
    dispatch_once(&int8ValueType_onceToken, &__block_literal_global_8);
  }

  v3 = int8ValueType_value;

  return v3;
}

+ (LNPrimitiveValueType)int16ValueType
{
  if (int16ValueType_onceToken != -1)
  {
    dispatch_once(&int16ValueType_onceToken, &__block_literal_global_10);
  }

  v3 = int16ValueType_value;

  return v3;
}

uint64_t __38__LNPrimitiveValueType_int16ValueType__block_invoke()
{
  int16ValueType_value = [[LNPrimitiveValueType alloc] initWithTypeIdentifier:4];

  return MEMORY[0x1EEE66BB8]();
}

+ (LNPrimitiveValueType)int32ValueType
{
  if (int32ValueType_onceToken != -1)
  {
    dispatch_once(&int32ValueType_onceToken, &__block_literal_global_12);
  }

  v3 = int32ValueType_value;

  return v3;
}

uint64_t __38__LNPrimitiveValueType_int32ValueType__block_invoke()
{
  int32ValueType_value = [[LNPrimitiveValueType alloc] initWithTypeIdentifier:5];

  return MEMORY[0x1EEE66BB8]();
}

+ (LNPrimitiveValueType)int64ValueType
{
  if (int64ValueType_onceToken != -1)
  {
    dispatch_once(&int64ValueType_onceToken, &__block_literal_global_14);
  }

  v3 = int64ValueType_value;

  return v3;
}

uint64_t __38__LNPrimitiveValueType_int64ValueType__block_invoke()
{
  int64ValueType_value = [[LNPrimitiveValueType alloc] initWithTypeIdentifier:6];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __47__LNPrimitiveValueType_dateComponentsValueType__block_invoke()
{
  dateComponentsValueType_value = [[LNPrimitiveValueType alloc] initWithTypeIdentifier:9];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __37__LNPrimitiveValueType_dateValueType__block_invoke()
{
  dateValueType_value = [[LNPrimitiveValueType alloc] initWithTypeIdentifier:8];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __36__LNPrimitiveValueType_URLValueType__block_invoke()
{
  URLValueType_value = [[LNPrimitiveValueType alloc] initWithTypeIdentifier:11];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __42__LNPrimitiveValueType_placemarkValueType__block_invoke()
{
  placemarkValueType_value = [[LNPrimitiveValueType alloc] initWithTypeIdentifier:10];

  return MEMORY[0x1EEE66BB8]();
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
  v10.super_class = LNPrimitiveValueType;
  if (![(LNValueType *)&v10 isEqual:v6])
  {
LABEL_7:
    v8 = 0;
    goto LABEL_8;
  }

  v7 = [(LNPrimitiveValueType *)self typeIdentifier];
  v8 = v7 == [(LNPrimitiveValueType *)v6 typeIdentifier];
LABEL_8:

LABEL_10:
  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = LNPrimitiveValueType;
  v4 = a3;
  [(LNValueType *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:-[LNPrimitiveValueType typeIdentifier](self forKey:{"typeIdentifier", v5.receiver, v5.super_class), @"typeIdentifier"}];
}

- (LNPrimitiveValueType)initWithCoder:(id)a3
{
  v4 = [a3 decodeIntegerForKey:@"typeIdentifier"];

  return [(LNPrimitiveValueType *)self initWithTypeIdentifier:v4];
}

- (id)description
{
  v2 = [(LNPrimitiveValueType *)self typeIdentifier];
  if ((v2 - 1) > 0xB)
  {
    return @"String";
  }

  else
  {
    return off_1E72B0D88[v2 - 1];
  }
}

- (NSString)typeIdentifierAsString
{
  v2 = [(LNPrimitiveValueType *)self typeIdentifier];
  if ((v2 - 1) > 0xB)
  {
    return @"String";
  }

  else
  {
    return &off_1E72B0D88[v2 - 1]->isa;
  }
}

- (LNPrimitiveValueType)initWithTypeIdentifier:(int64_t)a3
{
  v8.receiver = self;
  v8.super_class = LNPrimitiveValueType;
  v4 = [(LNValueType *)&v8 initWithContentType:0];
  v5 = v4;
  if (v4)
  {
    v4->_typeIdentifier = a3;
    v6 = v4;
  }

  return v5;
}

@end
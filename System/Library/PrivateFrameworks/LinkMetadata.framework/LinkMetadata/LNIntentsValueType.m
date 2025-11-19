@interface LNIntentsValueType
+ (LNIntentsValueType)applicationValueType;
+ (LNIntentsValueType)calendarEventValueType;
+ (LNIntentsValueType)currencyAmountValueType;
+ (LNIntentsValueType)environmentValueType;
+ (LNIntentsValueType)fileValueType;
+ (LNIntentsValueType)mediaItemValueType;
+ (LNIntentsValueType)mediaSearchValueType;
+ (LNIntentsValueType)messageConversationValueType;
+ (LNIntentsValueType)noteValueType;
+ (LNIntentsValueType)notificationValueType;
+ (LNIntentsValueType)paymentMethodValueType;
+ (LNIntentsValueType)personValueType;
+ (LNIntentsValueType)taskListValueType;
+ (LNIntentsValueType)taskValueType;
+ (LNIntentsValueType)timerValueType;
+ (id)objectClassesForCoding;
+ (id)supportedClassesByTypeIdentifier;
- (BOOL)isEqual:(id)a3;
- (Class)objectClass;
- (LNIntentsValueType)initWithCoder:(id)a3;
- (LNIntentsValueType)initWithTypeIdentifier:(int64_t)a3 contentType:(id)a4;
- (NSString)typeIdentifierAsString;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNIntentsValueType

+ (LNIntentsValueType)fileValueType
{
  if (fileValueType_onceToken != -1)
  {
    dispatch_once(&fileValueType_onceToken, &__block_literal_global_28);
  }

  v3 = fileValueType_value;

  return v3;
}

+ (LNIntentsValueType)personValueType
{
  if (personValueType_onceToken != -1)
  {
    dispatch_once(&personValueType_onceToken, &__block_literal_global_8_1228);
  }

  v3 = personValueType_value;

  return v3;
}

+ (LNIntentsValueType)currencyAmountValueType
{
  if (currencyAmountValueType_onceToken != -1)
  {
    dispatch_once(&currencyAmountValueType_onceToken, &__block_literal_global_4_1234);
  }

  v3 = currencyAmountValueType_value;

  return v3;
}

+ (LNIntentsValueType)paymentMethodValueType
{
  if (paymentMethodValueType_onceToken != -1)
  {
    dispatch_once(&paymentMethodValueType_onceToken, &__block_literal_global_30);
  }

  v3 = paymentMethodValueType_value;

  return v3;
}

+ (LNIntentsValueType)applicationValueType
{
  if (applicationValueType_onceToken != -1)
  {
    dispatch_once(&applicationValueType_onceToken, &__block_literal_global_1238);
  }

  v3 = applicationValueType_value;

  return v3;
}

- (unint64_t)hash
{
  v5.receiver = self;
  v5.super_class = LNIntentsValueType;
  v3 = [(LNValueType *)&v5 hash];
  return [(LNIntentsValueType *)self typeIdentifier]^ v3;
}

uint64_t __35__LNIntentsValueType_fileValueType__block_invoke()
{
  fileValueType_value = [[LNIntentsValueType alloc] initWithTypeIdentifier:12 contentType:0];

  return MEMORY[0x1EEE66BB8]();
}

void __37__LNIntentsValueType_personValueType__block_invoke()
{
  v0 = [LNIntentsValueType alloc];
  v3 = [[LNContentType alloc] initWithContentType:@"com.apple.appintents.IntentPerson"];
  v1 = [(LNIntentsValueType *)v0 initWithTypeIdentifier:3 contentType:v3];
  v2 = personValueType_value;
  personValueType_value = v1;
}

uint64_t __45__LNIntentsValueType_currencyAmountValueType__block_invoke()
{
  currencyAmountValueType_value = [[LNIntentsValueType alloc] initWithTypeIdentifier:14 contentType:0];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __44__LNIntentsValueType_paymentMethodValueType__block_invoke()
{
  paymentMethodValueType_value = [[LNIntentsValueType alloc] initWithTypeIdentifier:13 contentType:0];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __42__LNIntentsValueType_applicationValueType__block_invoke()
{
  applicationValueType_value = [[LNIntentsValueType alloc] initWithTypeIdentifier:0 contentType:0];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)objectClassesForCoding
{
  v2 = [a1 supportedClassesByTypeIdentifier];
  v3 = [v2 allValues];

  return v3;
}

+ (id)supportedClassesByTypeIdentifier
{
  v6[15] = *MEMORY[0x1E69E9840];
  v5[0] = &unk_1F02FEE80;
  v6[0] = objc_opt_class();
  v5[1] = &unk_1F02FEE98;
  v6[1] = objc_opt_class();
  v5[2] = &unk_1F02FEEB0;
  v6[2] = objc_opt_class();
  v5[3] = &unk_1F02FEEC8;
  v6[3] = objc_opt_class();
  v5[4] = &unk_1F02FEEE0;
  v6[4] = objc_opt_class();
  v5[5] = &unk_1F02FEEF8;
  v6[5] = objc_opt_class();
  v5[6] = &unk_1F02FEF10;
  v6[6] = objc_opt_class();
  v5[7] = &unk_1F02FEF28;
  v6[7] = objc_opt_class();
  v5[8] = &unk_1F02FEF40;
  v6[8] = objc_opt_class();
  v5[9] = &unk_1F02FEF58;
  v6[9] = objc_opt_class();
  v5[10] = &unk_1F02FEF70;
  v6[10] = objc_opt_class();
  v5[11] = &unk_1F02FEF88;
  v6[11] = objc_opt_class();
  v5[12] = &unk_1F02FEFA0;
  v6[12] = objc_opt_class();
  v5[13] = &unk_1F02FEFB8;
  v6[13] = objc_opt_class();
  v5[14] = &unk_1F02FEFD0;
  v6[14] = objc_opt_class();
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:15];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (Class)objectClass
{
  v3 = [objc_opt_class() supportedClassesByTypeIdentifier];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:{-[LNIntentsValueType typeIdentifier](self, "typeIdentifier")}];
  v5 = [v3 objectForKeyedSubscript:v4];

  return v5;
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
  v10.super_class = LNIntentsValueType;
  if (![(LNValueType *)&v10 isEqual:v6])
  {
LABEL_7:
    v8 = 0;
    goto LABEL_8;
  }

  v7 = [(LNIntentsValueType *)self typeIdentifier];
  v8 = v7 == [(LNIntentsValueType *)v6 typeIdentifier];
LABEL_8:

LABEL_10:
  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = LNIntentsValueType;
  v4 = a3;
  [(LNValueType *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:-[LNIntentsValueType typeIdentifier](self forKey:{"typeIdentifier", v5.receiver, v5.super_class), @"typeIdentifier"}];
}

- (LNIntentsValueType)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"contentType"];
  v6 = [v4 decodeIntegerForKey:@"typeIdentifier"];

  v7 = [(LNIntentsValueType *)self initWithTypeIdentifier:v6 contentType:v5];
  return v7;
}

- (id)description
{
  v2 = [(LNIntentsValueType *)self typeIdentifier];
  if ((v2 - 1) > 0xD)
  {
    return @"Application";
  }

  else
  {
    return off_1E72B0DE8[v2 - 1];
  }
}

- (NSString)typeIdentifierAsString
{
  v2 = [(LNIntentsValueType *)self typeIdentifier];
  if ((v2 - 1) > 0xD)
  {
    return @"Application";
  }

  else
  {
    return &off_1E72B0DE8[v2 - 1]->isa;
  }
}

- (LNIntentsValueType)initWithTypeIdentifier:(int64_t)a3 contentType:(id)a4
{
  v9.receiver = self;
  v9.super_class = LNIntentsValueType;
  v5 = [(LNValueType *)&v9 initWithContentType:a4];
  v6 = v5;
  if (v5)
  {
    v5->_typeIdentifier = a3;
    v7 = v5;
  }

  return v6;
}

+ (LNIntentsValueType)timerValueType
{
  if (timerValueType_onceToken != -1)
  {
    dispatch_once(&timerValueType_onceToken, &__block_literal_global_26);
  }

  v3 = timerValueType_value;

  return v3;
}

uint64_t __36__LNIntentsValueType_timerValueType__block_invoke()
{
  timerValueType_value = [[LNIntentsValueType alloc] initWithTypeIdentifier:6 contentType:0];

  return MEMORY[0x1EEE66BB8]();
}

+ (LNIntentsValueType)taskListValueType
{
  if (taskListValueType_onceToken != -1)
  {
    dispatch_once(&taskListValueType_onceToken, &__block_literal_global_24_1214);
  }

  v3 = taskListValueType_value;

  return v3;
}

uint64_t __39__LNIntentsValueType_taskListValueType__block_invoke()
{
  taskListValueType_value = [[LNIntentsValueType alloc] initWithTypeIdentifier:8 contentType:0];

  return MEMORY[0x1EEE66BB8]();
}

+ (LNIntentsValueType)taskValueType
{
  if (taskValueType_onceToken != -1)
  {
    dispatch_once(&taskValueType_onceToken, &__block_literal_global_22_1216);
  }

  v3 = taskValueType_value;

  return v3;
}

uint64_t __35__LNIntentsValueType_taskValueType__block_invoke()
{
  taskValueType_value = [[LNIntentsValueType alloc] initWithTypeIdentifier:7 contentType:0];

  return MEMORY[0x1EEE66BB8]();
}

+ (LNIntentsValueType)notificationValueType
{
  if (notificationValueType_onceToken != -1)
  {
    dispatch_once(&notificationValueType_onceToken, &__block_literal_global_20_1218);
  }

  v3 = notificationValueType_value;

  return v3;
}

uint64_t __43__LNIntentsValueType_notificationValueType__block_invoke()
{
  notificationValueType_value = [[LNIntentsValueType alloc] initWithTypeIdentifier:5 contentType:0];

  return MEMORY[0x1EEE66BB8]();
}

+ (LNIntentsValueType)noteValueType
{
  if (noteValueType_onceToken != -1)
  {
    dispatch_once(&noteValueType_onceToken, &__block_literal_global_18_1220);
  }

  v3 = noteValueType_value;

  return v3;
}

uint64_t __35__LNIntentsValueType_noteValueType__block_invoke()
{
  noteValueType_value = [[LNIntentsValueType alloc] initWithTypeIdentifier:4 contentType:0];

  return MEMORY[0x1EEE66BB8]();
}

+ (LNIntentsValueType)messageConversationValueType
{
  if (messageConversationValueType_onceToken != -1)
  {
    dispatch_once(&messageConversationValueType_onceToken, &__block_literal_global_16_1222);
  }

  v3 = messageConversationValueType_value;

  return v3;
}

uint64_t __50__LNIntentsValueType_messageConversationValueType__block_invoke()
{
  messageConversationValueType_value = [[LNIntentsValueType alloc] initWithTypeIdentifier:11 contentType:0];

  return MEMORY[0x1EEE66BB8]();
}

+ (LNIntentsValueType)mediaSearchValueType
{
  if (mediaSearchValueType_onceToken != -1)
  {
    dispatch_once(&mediaSearchValueType_onceToken, &__block_literal_global_14_1224);
  }

  v3 = mediaSearchValueType_value;

  return v3;
}

uint64_t __42__LNIntentsValueType_mediaSearchValueType__block_invoke()
{
  mediaSearchValueType_value = [[LNIntentsValueType alloc] initWithTypeIdentifier:10 contentType:0];

  return MEMORY[0x1EEE66BB8]();
}

+ (LNIntentsValueType)mediaItemValueType
{
  if (mediaItemValueType_onceToken != -1)
  {
    dispatch_once(&mediaItemValueType_onceToken, &__block_literal_global_12_1226);
  }

  v3 = mediaItemValueType_value;

  return v3;
}

uint64_t __40__LNIntentsValueType_mediaItemValueType__block_invoke()
{
  mediaItemValueType_value = [[LNIntentsValueType alloc] initWithTypeIdentifier:9 contentType:0];

  return MEMORY[0x1EEE66BB8]();
}

+ (LNIntentsValueType)environmentValueType
{
  if (environmentValueType_onceToken != -1)
  {
    dispatch_once(&environmentValueType_onceToken, &__block_literal_global_6_1232);
  }

  v3 = environmentValueType_value;

  return v3;
}

uint64_t __42__LNIntentsValueType_environmentValueType__block_invoke()
{
  environmentValueType_value = [[LNIntentsValueType alloc] initWithTypeIdentifier:2 contentType:0];

  return MEMORY[0x1EEE66BB8]();
}

+ (LNIntentsValueType)calendarEventValueType
{
  if (calendarEventValueType_onceToken != -1)
  {
    dispatch_once(&calendarEventValueType_onceToken, &__block_literal_global_2_1236);
  }

  v3 = calendarEventValueType_value;

  return v3;
}

uint64_t __44__LNIntentsValueType_calendarEventValueType__block_invoke()
{
  calendarEventValueType_value = [[LNIntentsValueType alloc] initWithTypeIdentifier:1 contentType:0];

  return MEMORY[0x1EEE66BB8]();
}

@end
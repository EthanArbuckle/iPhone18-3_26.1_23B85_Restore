@interface HDNotificationInstructionCriteria
+ (NSString)criteriaIdentifier;
- (BOOL)isEqual:(id)a3;
- (HDNotificationInstructionCriteria)initWithCodableNotificationInstructionCriteria:(id)a3;
- (HDNotificationInstructionCriteria)initWithCoder:(id)a3;
- (HDNotificationInstructionCriteria)initWithMessageDictionary:(id)a3;
- (id)codableCriteria;
- (int64_t)isValidWithDatabaseTransaction:(id)a3 error:(id *)a4;
- (unint64_t)hash;
@end

@implementation HDNotificationInstructionCriteria

+ (NSString)criteriaIdentifier
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return &stru_283BF39C8;
}

- (int64_t)isValidWithDatabaseTransaction:(id)a3 error:(id *)a4
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  [MEMORY[0x277CCA9B8] hk_assignError:a4 code:125 description:@"Only valid to call on a subclass"];
  return 0;
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    return 1;
  }

  v3 = a3;
  v4 = [v3 isMemberOfClass:objc_opt_class()];

  return v4;
}

- (unint64_t)hash
{
  v2 = [objc_opt_class() criteriaIdentifier];
  v3 = [v2 hash];

  return v3;
}

- (HDNotificationInstructionCriteria)initWithCoder:(id)a3
{
  objc_opt_class();
  NSRequestConcreteImplementation();

  return [(HDNotificationInstructionCriteria *)self init];
}

- (HDNotificationInstructionCriteria)initWithMessageDictionary:(id)a3
{
  objc_opt_class();
  NSRequestConcreteImplementation();

  return 0;
}

- (HDNotificationInstructionCriteria)initWithCodableNotificationInstructionCriteria:(id)a3
{
  objc_opt_class();
  NSRequestConcreteImplementation();

  return 0;
}

- (id)codableCriteria
{
  v2 = objc_alloc_init(HDCodableNotificationInstructionCriteria);
  v3 = [objc_opt_class() criteriaIdentifier];
  [(HDCodableNotificationInstructionCriteria *)v2 setIdentifier:v3];

  return v2;
}

@end
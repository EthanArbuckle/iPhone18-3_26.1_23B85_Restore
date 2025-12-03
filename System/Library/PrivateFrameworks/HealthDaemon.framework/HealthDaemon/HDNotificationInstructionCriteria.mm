@interface HDNotificationInstructionCriteria
+ (NSString)criteriaIdentifier;
- (BOOL)isEqual:(id)equal;
- (HDNotificationInstructionCriteria)initWithCodableNotificationInstructionCriteria:(id)criteria;
- (HDNotificationInstructionCriteria)initWithCoder:(id)coder;
- (HDNotificationInstructionCriteria)initWithMessageDictionary:(id)dictionary;
- (id)codableCriteria;
- (int64_t)isValidWithDatabaseTransaction:(id)transaction error:(id *)error;
- (unint64_t)hash;
@end

@implementation HDNotificationInstructionCriteria

+ (NSString)criteriaIdentifier
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return &stru_283BF39C8;
}

- (int64_t)isValidWithDatabaseTransaction:(id)transaction error:(id *)error
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  [MEMORY[0x277CCA9B8] hk_assignError:error code:125 description:@"Only valid to call on a subclass"];
  return 0;
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    return 1;
  }

  equalCopy = equal;
  v4 = [equalCopy isMemberOfClass:objc_opt_class()];

  return v4;
}

- (unint64_t)hash
{
  criteriaIdentifier = [objc_opt_class() criteriaIdentifier];
  v3 = [criteriaIdentifier hash];

  return v3;
}

- (HDNotificationInstructionCriteria)initWithCoder:(id)coder
{
  objc_opt_class();
  NSRequestConcreteImplementation();

  return [(HDNotificationInstructionCriteria *)self init];
}

- (HDNotificationInstructionCriteria)initWithMessageDictionary:(id)dictionary
{
  objc_opt_class();
  NSRequestConcreteImplementation();

  return 0;
}

- (HDNotificationInstructionCriteria)initWithCodableNotificationInstructionCriteria:(id)criteria
{
  objc_opt_class();
  NSRequestConcreteImplementation();

  return 0;
}

- (id)codableCriteria
{
  v2 = objc_alloc_init(HDCodableNotificationInstructionCriteria);
  criteriaIdentifier = [objc_opt_class() criteriaIdentifier];
  [(HDCodableNotificationInstructionCriteria *)v2 setIdentifier:criteriaIdentifier];

  return v2;
}

@end
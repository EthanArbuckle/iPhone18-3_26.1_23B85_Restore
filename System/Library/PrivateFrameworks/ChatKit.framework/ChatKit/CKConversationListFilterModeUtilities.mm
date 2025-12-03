@interface CKConversationListFilterModeUtilities
+ (id)filterModeChatPredicate:(unint64_t)predicate;
+ (id)filterModeDisclosureText:(unint64_t)text;
+ (uint64_t)invalidateEligibleFilterModesCache;
- (CKConversationListFilterModeUtilities)init;
@end

@implementation CKConversationListFilterModeUtilities

+ (uint64_t)invalidateEligibleFilterModesCache
{
  if (qword_1EAD46BA0 != -1)
  {
    swift_once();
  }

  v0 = sub_190D53040();
  __swift_project_value_buffer(v0, qword_1EAD9D8E0);
  v1 = sub_190D53020();
  v2 = sub_190D576C0();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_19020E000, v1, v2, "invalidating eligibleFilterModes", v3, 2u);
    MEMORY[0x193AF7A40](v3, -1, -1);
  }

  qword_1EAD44F78 = 0;
}

+ (id)filterModeDisclosureText:(unint64_t)text
{
  sub_190B6CC4C(text);
  if (v3)
  {
    v4 = sub_190D56ED0();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)filterModeChatPredicate:(unint64_t)predicate
{
  v3 = sub_190B6BF24(predicate);

  return v3;
}

- (CKConversationListFilterModeUtilities)init
{
  v3.receiver = self;
  v3.super_class = CKConversationListFilterModeUtilities;
  return [(CKConversationListFilterModeUtilities *)&v3 init];
}

@end
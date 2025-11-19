@interface NSSCompanionGenerativeModelsEligibilityState_ForwardDeclare
+ (BOOL)isOptedIn;
@end

@implementation NSSCompanionGenerativeModelsEligibilityState_ForwardDeclare

+ (BOOL)isOptedIn
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2050000000;
  v2 = qword_1EB30B018;
  v9 = qword_1EB30B018;
  if (!qword_1EB30B018)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1A86868A8;
    v5[3] = &unk_1E78261C8;
    v5[4] = &v6;
    sub_1A86868A8(v5);
    v2 = v7[3];
  }

  v3 = v2;
  _Block_object_dispose(&v6, 8);
  return [v2 isOptedIn];
}

@end
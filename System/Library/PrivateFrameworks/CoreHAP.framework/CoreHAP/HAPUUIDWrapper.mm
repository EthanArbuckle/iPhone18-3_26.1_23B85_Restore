@interface HAPUUIDWrapper
+ (id)wrappertlv:(unint64_t)a3 name:(id)a4;
@end

@implementation HAPUUIDWrapper

+ (id)wrappertlv:(unint64_t)a3 name:(id)a4
{
  v5 = a4;
  v6 = [(HAPFieldWrapper *)[HAPUUIDWrapper alloc] initWithTlvId:a3 name:v5];

  return v6;
}

@end
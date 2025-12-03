@interface HAPDataWrapper
+ (id)wrappertlv:(unint64_t)wrappertlv name:(id)name;
@end

@implementation HAPDataWrapper

+ (id)wrappertlv:(unint64_t)wrappertlv name:(id)name
{
  nameCopy = name;
  v6 = [(HAPFieldWrapper *)[HAPDataWrapper alloc] initWithTlvId:wrappertlv name:nameCopy];

  return v6;
}

@end
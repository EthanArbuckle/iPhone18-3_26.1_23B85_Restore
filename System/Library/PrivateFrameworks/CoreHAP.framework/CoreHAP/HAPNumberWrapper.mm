@interface HAPNumberWrapper
+ (id)wrappertlv:(unint64_t)wrappertlv name:(id)name;
@end

@implementation HAPNumberWrapper

+ (id)wrappertlv:(unint64_t)wrappertlv name:(id)name
{
  nameCopy = name;
  v6 = [(HAPFieldWrapper *)[HAPNumberWrapper alloc] initWithTlvId:wrappertlv name:nameCopy];

  return v6;
}

@end
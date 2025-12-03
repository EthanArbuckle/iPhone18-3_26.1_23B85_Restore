@interface HAPUint16Wrapper
+ (id)wrappertlv:(unint64_t)wrappertlv name:(id)name;
@end

@implementation HAPUint16Wrapper

+ (id)wrappertlv:(unint64_t)wrappertlv name:(id)name
{
  nameCopy = name;
  v6 = [(HAPFieldWrapper *)[HAPUint16Wrapper alloc] initWithTlvId:wrappertlv name:nameCopy];

  return v6;
}

@end
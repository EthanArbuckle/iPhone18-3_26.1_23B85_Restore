@interface HAPArrayWrapper
+ (id)wrappertlv:(unint64_t)a3 name:(id)a4 objectCreator:(id)a5;
@end

@implementation HAPArrayWrapper

+ (id)wrappertlv:(unint64_t)a3 name:(id)a4 objectCreator:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(HAPFieldWrapper *)[HAPArrayWrapper alloc] initWithTlvId:a3 name:v8];

  [(HAPArrayWrapper *)v9 setObjectCreator:v7];

  return v9;
}

@end
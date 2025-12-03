@interface HPSDeviceModelCoder
- (BOOL)deserialize:(id)deserialize withElement:(id)element error:(id *)error;
- (id)serialize:(id)serialize error:(id *)error;
@end

@implementation HPSDeviceModelCoder

- (BOOL)deserialize:(id)deserialize withElement:(id)element error:(id *)error
{
  deserializeCopy = deserialize;
  elementCopy = element;
  selfCopy = self;
  v10 = sub_2543A1EF8();
  v12 = v11;

  sub_2542E06EC(v10, v12, elementCopy);
  sub_2542D7D40(v10, v12);
  return 1;
}

- (id)serialize:(id)serialize error:(id *)error
{
  serializeCopy = serialize;
  selfCopy = self;
  v7 = sub_2542E0AD4(serializeCopy);
  v9 = v8;

  v10 = sub_2543A1EC8();
  sub_2542D7D40(v7, v9);

  return v10;
}

@end
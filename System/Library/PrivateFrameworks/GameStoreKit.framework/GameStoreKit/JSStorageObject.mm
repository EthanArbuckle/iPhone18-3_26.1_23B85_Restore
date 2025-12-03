@interface JSStorageObject
- (id)retrieveString:(id)string;
- (void)storeString:(id)string :(id)a4;
@end

@implementation JSStorageObject

- (void)storeString:(id)string :(id)a4
{
  stringCopy = string;
  v7 = a4;
  selfCopy = self;
  sub_24EF26EB0();
}

- (id)retrieveString:(id)string
{
  sub_24E69A5C4(0, &qword_27F21C8C8);
  stringCopy = string;
  selfCopy = self;
  v7 = sub_24F92C448();
  v8 = sub_24F92C458();

  return v8;
}

@end
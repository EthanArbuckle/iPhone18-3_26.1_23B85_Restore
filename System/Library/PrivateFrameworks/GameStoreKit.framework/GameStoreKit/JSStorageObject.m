@interface JSStorageObject
- (id)retrieveString:(id)a3;
- (void)storeString:(id)a3 :(id)a4;
@end

@implementation JSStorageObject

- (void)storeString:(id)a3 :(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_24EF26EB0();
}

- (id)retrieveString:(id)a3
{
  sub_24E69A5C4(0, &qword_27F21C8C8);
  v5 = a3;
  v6 = self;
  v7 = sub_24F92C448();
  v8 = sub_24F92C458();

  return v8;
}

@end
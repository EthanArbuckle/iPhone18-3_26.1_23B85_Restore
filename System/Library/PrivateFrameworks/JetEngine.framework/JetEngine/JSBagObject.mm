@interface JSBagObject
- (_TtC9JetEngine11JSBagObject)init;
- (id)BOOLean:(id)lean;
- (id)array:(id)array;
- (id)dictionary:(id)dictionary;
- (id)double:(id)double;
- (id)integer:(id)integer;
- (id)string:(id)string;
- (id)url:(id)url;
- (void)registerBagKeys:(id)keys;
@end

@implementation JSBagObject

- (void)registerBagKeys:(id)keys
{
  keysCopy = keys;
  selfCopy = self;
  sub_1AB09B6D4(keysCopy);
}

- (id)BOOLean:(id)lean
{
  leanCopy = lean;
  selfCopy = self;
  v6 = sub_1AB0B7490(leanCopy, sub_1AB0A2A74);

  return v6;
}

- (id)dictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  selfCopy = self;
  v6 = sub_1AB0B7490(dictionaryCopy, sub_1AB0A2EE8);

  return v6;
}

- (id)url:(id)url
{
  urlCopy = url;
  selfCopy = self;
  v6 = sub_1AB0B7490(urlCopy, sub_1AB0A33A8);

  return v6;
}

- (id)string:(id)string
{
  stringCopy = string;
  selfCopy = self;
  v6 = sub_1AB0B7490(stringCopy, sub_1AB0B7604);

  return v6;
}

- (id)double:(id)double
{
  doubleCopy = double;
  selfCopy = self;
  v6 = sub_1AB0B7490(doubleCopy, sub_1AB3CFDE0);

  return v6;
}

- (id)integer:(id)integer
{
  integerCopy = integer;
  selfCopy = self;
  v6 = sub_1AB0B7490(integerCopy, sub_1AB3CFFB4);

  return v6;
}

- (id)array:(id)array
{
  arrayCopy = array;
  selfCopy = self;
  v6 = sub_1AB0B7490(arrayCopy, sub_1AB3D0188);

  return v6;
}

- (_TtC9JetEngine11JSBagObject)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
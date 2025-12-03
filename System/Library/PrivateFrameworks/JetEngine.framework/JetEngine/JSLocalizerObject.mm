@interface JSLocalizerObject
- (_TtC9JetEngine17JSLocalizerObject)init;
- (id)fileSize:(id)size;
- (id)formattedCount:(id)count;
- (id)integer:(id)integer :(id)a4;
- (id)relativeDate:(id)date;
- (id)stringWithCount:(id)count :(id)a4 :(id)a5 :(id)a6;
@end

@implementation JSLocalizerObject

- (id)integer:(id)integer :(id)a4
{
  integerCopy = integer;
  v7 = a4;
  selfCopy = self;
  v9 = sub_1AB3BB768(integerCopy, v7);

  return v9;
}

- (id)stringWithCount:(id)count :(id)a4 :(id)a5 :(id)a6
{
  countCopy = count;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  selfCopy = self;
  v15 = sub_1AB3BBB00(countCopy, v11, v12, v13);

  return v15;
}

- (id)formattedCount:(id)count
{
  countCopy = count;
  selfCopy = self;
  v6 = sub_1AB3BCD08(countCopy, sub_1AB3BBD30);

  return v6;
}

- (id)fileSize:(id)size
{
  sizeCopy = size;
  selfCopy = self;
  v6 = sub_1AB3BCD08(sizeCopy, sub_1AB3BBEF4);

  return v6;
}

- (id)relativeDate:(id)date
{
  dateCopy = date;
  selfCopy = self;
  v6 = sub_1AB3BCD08(dateCopy, sub_1AB3BCE78);

  return v6;
}

- (_TtC9JetEngine17JSLocalizerObject)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
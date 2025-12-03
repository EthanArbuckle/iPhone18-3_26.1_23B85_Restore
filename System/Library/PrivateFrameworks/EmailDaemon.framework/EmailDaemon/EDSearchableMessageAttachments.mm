@interface EDSearchableMessageAttachments
+ (CSCustomAttributeKey)specificUTIsAttribute;
- (EDSearchableMessageAttachments)init;
- (EDSearchableMessageAttachments)initWithNames:(id)names paths:(id)paths UTIs:(id)is specificUTIs:(id)tIs mimeTypes:(id)types kinds:(id)kinds;
- (void)addToAttributes:(id)attributes;
@end

@implementation EDSearchableMessageAttachments

+ (CSCustomAttributeKey)specificUTIsAttribute
{
  if (qword_1EC1C3AD0 != -1)
  {
    swift_once();
  }

  v3 = qword_1EC1C45F8;

  return v3;
}

- (EDSearchableMessageAttachments)initWithNames:(id)names paths:(id)paths UTIs:(id)is specificUTIs:(id)tIs mimeTypes:(id)types kinds:(id)kinds
{
  v9 = sub_1C645CA14();
  v10 = sub_1C645CA14();
  v11 = sub_1C645CA14();
  sub_1C645C794();
  v12 = sub_1C645CA14();
  v13 = sub_1C645CA14();
  v14 = sub_1C645CA14();
  v15 = (&self->super.isa + OBJC_IVAR___EDSearchableMessageAttachments__underlying);
  *&self->_underlying[OBJC_IVAR___EDSearchableMessageAttachments__underlying + 16] = &type metadata for SearchableMessageAttachments;
  v16 = swift_allocObject();
  *v15 = v16;
  v16[2] = v9;
  v16[3] = v10;
  v16[4] = v11;
  v16[5] = v12;
  v16[6] = v13;
  v16[7] = v14;
  v18.receiver = self;
  v18.super_class = EDSearchableMessageAttachments;
  return [(EDSearchableMessageAttachments *)&v18 init];
}

- (void)addToAttributes:(id)attributes
{
  sub_1C640DBAC(self + OBJC_IVAR___EDSearchableMessageAttachments__underlying, v7);
  attributesCopy = attributes;
  selfCopy = self;
  swift_dynamicCast();
  v7[0] = v7[3];
  v7[1] = v7[4];
  v7[2] = v7[5];
  SearchableMessageAttachments.addTo(_:)(attributesCopy);
}

- (EDSearchableMessageAttachments)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
@interface ICAudioTextAttachment
- (ICAudioTextAttachment)initWithAttachment:(id)attachment;
- (ICAudioTextAttachment)initWithCoder:(id)coder;
- (ICAudioTextAttachment)initWithData:(id)data ofType:(id)type;
- (NSArray)supportedPresentationSizes;
@end

@implementation ICAudioTextAttachment

- (NSArray)supportedPresentationSizes
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAE70);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D4438490;
  *(v2 + 32) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithShort_];
  sub_1D41766C0(0, &qword_1EDE33950);
  v3 = sub_1D4419E24();

  return v3;
}

- (ICAudioTextAttachment)initWithAttachment:(id)attachment
{
  v4.receiver = self;
  v4.super_class = ICAudioTextAttachment;
  return [(ICBaseTextAttachment *)&v4 initWithAttachment:attachment];
}

- (ICAudioTextAttachment)initWithData:(id)data ofType:(id)type
{
  dataCopy = data;
  if (data)
  {
    typeCopy = type;
    v8 = dataCopy;
    dataCopy = sub_1D4417264();
    v10 = v9;

    if (type)
    {
LABEL_3:
      sub_1D4419C54();
      v12 = v11;

      goto LABEL_6;
    }
  }

  else
  {
    typeCopy2 = type;
    v10 = 0xF000000000000000;
    if (type)
    {
      goto LABEL_3;
    }
  }

  v12 = 0;
LABEL_6:
  if (v10 >> 60 != 15)
  {
    v14 = sub_1D4417254();
    if (v12)
    {
      goto LABEL_8;
    }

LABEL_10:
    v15 = 0;
    goto LABEL_11;
  }

  v14 = 0;
  if (!v12)
  {
    goto LABEL_10;
  }

LABEL_8:
  v15 = sub_1D4419C14();

LABEL_11:
  v18.receiver = self;
  v18.super_class = ICAudioTextAttachment;
  v16 = [(ICTextAttachment *)&v18 initWithData:v14 ofType:v15];
  sub_1D4342800(dataCopy, v10);

  return v16;
}

- (ICAudioTextAttachment)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = ICAudioTextAttachment;
  coderCopy = coder;
  v4 = [(ICAudioTextAttachment *)&v6 initWithCoder:coderCopy];

  if (v4)
  {
  }

  return v4;
}

@end
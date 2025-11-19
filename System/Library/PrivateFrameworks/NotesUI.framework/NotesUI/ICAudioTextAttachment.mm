@interface ICAudioTextAttachment
- (ICAudioTextAttachment)initWithAttachment:(id)a3;
- (ICAudioTextAttachment)initWithCoder:(id)a3;
- (ICAudioTextAttachment)initWithData:(id)a3 ofType:(id)a4;
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

- (ICAudioTextAttachment)initWithAttachment:(id)a3
{
  v4.receiver = self;
  v4.super_class = ICAudioTextAttachment;
  return [(ICBaseTextAttachment *)&v4 initWithAttachment:a3];
}

- (ICAudioTextAttachment)initWithData:(id)a3 ofType:(id)a4
{
  v5 = a3;
  if (a3)
  {
    v7 = a4;
    v8 = v5;
    v5 = sub_1D4417264();
    v10 = v9;

    if (a4)
    {
LABEL_3:
      sub_1D4419C54();
      v12 = v11;

      goto LABEL_6;
    }
  }

  else
  {
    v13 = a4;
    v10 = 0xF000000000000000;
    if (a4)
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
  sub_1D4342800(v5, v10);

  return v16;
}

- (ICAudioTextAttachment)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = ICAudioTextAttachment;
  v3 = a3;
  v4 = [(ICAudioTextAttachment *)&v6 initWithCoder:v3];

  if (v4)
  {
  }

  return v4;
}

@end
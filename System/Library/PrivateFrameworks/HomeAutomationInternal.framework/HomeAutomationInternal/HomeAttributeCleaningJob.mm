@interface HomeAttributeCleaningJob
- (BOOL)isEqual:(id)equal;
- (HomeAttributeCleaningJob)initWithCoder:(id)coder;
- (HomeAttributeCleaningJob)initWithIdentifier:(id)identifier displayString:(id)string pronunciationHint:(id)hint;
- (NSString)description;
@end

@implementation HomeAttributeCleaningJob

- (NSString)description
{
  selfCopy = self;
  HomeAttributeCleaningJob.description.getter();

  v3 = sub_252E36F04();

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_252E377F4();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = HomeAttributeCleaningJob.isEqual(_:)(v8);

  sub_25293847C(v8, &qword_27F541E80, &qword_252E3DFA0);
  return v6 & 1;
}

- (HomeAttributeCleaningJob)initWithIdentifier:(id)identifier displayString:(id)string pronunciationHint:(id)hint
{
  if (identifier)
  {
    v6 = sub_252E36F34();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = sub_252E36F34();
  v11 = v10;
  if (hint)
  {
    v12 = sub_252E36F34();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  return HomeAttributeCleaningJob.init(identifier:display:pronunciationHint:)(v6, v8, v9, v11, v12, v14);
}

- (HomeAttributeCleaningJob)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for HomeAttributeCleaningJob();
  coderCopy = coder;
  v5 = [(HomeAttributeCleaningJob *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end
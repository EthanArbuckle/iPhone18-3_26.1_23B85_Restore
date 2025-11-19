@interface MUPlaceActionBarType
- (MUPlaceActionBarType)init;
- (NSString)symbol;
- (NSString)title;
@end

@implementation MUPlaceActionBarType

- (NSString)symbol
{
  type metadata accessor for MUPlaceActionBarTypeCustom();
  v2 = swift_dynamicCastClass();
  if (v2)
  {
    v3 = &OBJC_IVAR___MUPlaceActionBarTypeCustom_symbolName;
LABEL_5:
    v4 = (v2 + *v3);
    swift_beginAccess();
    v6 = *v4;
    v5 = v4[1];

    goto LABEL_6;
  }

  type metadata accessor for MUPlaceActionBarTypeDirections();
  v2 = swift_dynamicCastClass();
  if (v2)
  {
    v3 = &OBJC_IVAR___MUPlaceActionBarTypeDirections_modality;
    goto LABEL_5;
  }

LABEL_6:
  v7 = sub_1C584F630();

  return v7;
}

- (NSString)title
{
  type metadata accessor for MUPlaceActionBarTypeCustom();
  v2 = swift_dynamicCastClass();
  if (v2)
  {
    v3 = &OBJC_IVAR___MUPlaceActionBarTypeCustom_text;
  }

  else
  {
    type metadata accessor for MUPlaceActionBarTypeDirections();
    v2 = swift_dynamicCastClass();
    if (!v2)
    {
      goto LABEL_8;
    }

    v3 = &OBJC_IVAR___MUPlaceActionBarTypeDirections_eta;
  }

  v4 = &v2[*v3];
  swift_beginAccess();
  if (*(v4 + 1))
  {
    v5 = *v4;

    v6 = sub_1C584F630();

    v2 = v6;
  }

  else
  {
    v2 = 0;
  }

LABEL_8:

  return v2;
}

- (MUPlaceActionBarType)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for MUPlaceActionBarType();
  return [(MUPlaceActionBarType *)&v3 init];
}

@end
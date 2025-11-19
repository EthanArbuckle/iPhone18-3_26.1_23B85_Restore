@interface BlastDoorSMSCTPartContentWrapper
- (BlastDoorSMSCTPartAttachment)attachment;
- (BlastDoorSMSCTPartAttributedChipList)attributedChipList;
- (BlastDoorSMSCTPartAttributedRichCards)attributedRichCards;
- (BlastDoorSMSCTPartContentWrapper)init;
- (BlastDoorSMSCTPartPlain)plain;
- (BlastDoorSMSCTPartSMIL)smil;
- (NSString)description;
@end

@implementation BlastDoorSMSCTPartContentWrapper

- (NSString)description
{
  sub_214300110(*(&self->super.isa + OBJC_IVAR___BlastDoorSMSCTPartContentWrapper_sMSCTPart_Content), *&self->sMSCTPart_Content[OBJC_IVAR___BlastDoorSMSCTPartContentWrapper_sMSCTPart_Content], *&self->sMSCTPart_Content[OBJC_IVAR___BlastDoorSMSCTPartContentWrapper_sMSCTPart_Content + 8], *&self->sMSCTPart_Content[OBJC_IVAR___BlastDoorSMSCTPartContentWrapper_sMSCTPart_Content + 16], self->sMSCTPart_Content[OBJC_IVAR___BlastDoorSMSCTPartContentWrapper_sMSCTPart_Content + 24]);
  sub_2146D9608();
  v2 = sub_2146D9588();

  return v2;
}

- (BlastDoorSMSCTPartPlain)plain
{
  v4 = (self + OBJC_IVAR___BlastDoorSMSCTPartContentWrapper_sMSCTPart_Content);
  if (self->sMSCTPart_Content[OBJC_IVAR___BlastDoorSMSCTPartContentWrapper_sMSCTPart_Content + 24])
  {
    v5 = 0;
  }

  else
  {
    v13 = v2;
    v14 = v3;
    v8 = *v4;
    v7 = v4[1];
    v9 = type metadata accessor for _ObjCSMSCTPartPlainWrapper();
    v10 = objc_allocWithZone(v9);
    v11 = &v10[OBJC_IVAR___BlastDoorSMSCTPartPlain_sMSCTPartPlain];
    *v11 = v8;
    *(v11 + 1) = v7;
    v12.receiver = v10;
    v12.super_class = v9;

    v5 = [(BlastDoorSMSCTPartContentWrapper *)&v12 init];
  }

  return v5;
}

- (BlastDoorSMSCTPartSMIL)smil
{
  v4 = (self + OBJC_IVAR___BlastDoorSMSCTPartContentWrapper_sMSCTPart_Content);
  if (self->sMSCTPart_Content[OBJC_IVAR___BlastDoorSMSCTPartContentWrapper_sMSCTPart_Content + 24] == 1)
  {
    v15 = v2;
    v16 = v3;
    v6 = v4[2];
    v5 = v4[3];
    v8 = *v4;
    v7 = v4[1];
    v9 = type metadata accessor for _ObjCSMSCTPartSMILWrapper();
    v10 = objc_allocWithZone(v9);
    v11 = &v10[OBJC_IVAR___BlastDoorSMSCTPartSMIL_sMSCTPartSMIL];
    *v11 = v8;
    v11[1] = v7;
    v11[2] = v6;
    v11[3] = v5;
    sub_214031CA0(v8);
    v14.receiver = v10;
    v14.super_class = v9;

    v12 = [(BlastDoorSMSCTPartContentWrapper *)&v14 init];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BlastDoorSMSCTPartAttachment)attachment
{
  v4 = (self + OBJC_IVAR___BlastDoorSMSCTPartContentWrapper_sMSCTPart_Content);
  if (self->sMSCTPart_Content[OBJC_IVAR___BlastDoorSMSCTPartContentWrapper_sMSCTPart_Content + 24] == 2)
  {
    v15 = v2;
    v16 = v3;
    v6 = v4[2];
    v5 = v4[3];
    v8 = *v4;
    v7 = v4[1];
    v9 = type metadata accessor for _ObjCSMSCTPartAttachmentWrapper();
    v10 = objc_allocWithZone(v9);
    v11 = &v10[OBJC_IVAR___BlastDoorSMSCTPartAttachment_sMSCTPartAttachment];
    *v11 = v8;
    v11[1] = v7;
    v11[2] = v6;
    v11[3] = v5;
    sub_213FDCA18(v8, v7);
    v14.receiver = v10;
    v14.super_class = v9;

    v12 = [(BlastDoorSMSCTPartContentWrapper *)&v14 init];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BlastDoorSMSCTPartAttributedChipList)attributedChipList
{
  v4 = (self + OBJC_IVAR___BlastDoorSMSCTPartContentWrapper_sMSCTPart_Content);
  if (self->sMSCTPart_Content[OBJC_IVAR___BlastDoorSMSCTPartContentWrapper_sMSCTPart_Content + 24] == 3)
  {
    v13 = v2;
    v14 = v3;
    v5 = *v4;
    v6 = v4[1];
    v7 = type metadata accessor for _ObjCSMSCTPartAttributedChipListWrapper();
    v8 = objc_allocWithZone(v7);
    v9 = &v8[OBJC_IVAR___BlastDoorSMSCTPartAttributedChipList_sMSCTPartAttributedChipList];
    *v9 = v5;
    v9[8] = v6;
    v12.receiver = v8;
    v12.super_class = v7;

    v10 = [(BlastDoorSMSCTPartContentWrapper *)&v12 init];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BlastDoorSMSCTPartAttributedRichCards)attributedRichCards
{
  v4 = (self + OBJC_IVAR___BlastDoorSMSCTPartContentWrapper_sMSCTPart_Content);
  if (self->sMSCTPart_Content[OBJC_IVAR___BlastDoorSMSCTPartContentWrapper_sMSCTPart_Content + 24] == 4)
  {
    v13 = v2;
    v14 = v3;
    v6 = *v4;
    v5 = v4[1];
    v7 = type metadata accessor for _ObjCSMSCTPartAttributedRichCardsWrapper();
    v8 = objc_allocWithZone(v7);
    v9 = &v8[OBJC_IVAR___BlastDoorSMSCTPartAttributedRichCards_sMSCTPartAttributedRichCards];
    *v9 = v6;
    v9[1] = v5;
    sub_2143001B8(v6);
    v12.receiver = v8;
    v12.super_class = v7;
    v10 = [(BlastDoorSMSCTPartContentWrapper *)&v12 init];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BlastDoorSMSCTPartContentWrapper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
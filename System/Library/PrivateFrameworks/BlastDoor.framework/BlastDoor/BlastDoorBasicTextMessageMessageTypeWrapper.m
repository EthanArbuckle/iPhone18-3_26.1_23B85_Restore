@interface BlastDoorBasicTextMessageMessageTypeWrapper
- (BlastDoorBasicAudioMessage)audioMessage;
- (BlastDoorBasicEmojiTapback)emojiTapback;
- (BlastDoorBasicMessage)textMessage;
- (BlastDoorBasicTapBack)tapback;
- (BlastDoorBasicTextMessageMessageTypeWrapper)init;
- (BlastDoorBasicTypingIndicator)typingIndicator;
- (BlastDoorUnsupportedMessage)unsupported;
- (NSString)description;
- (unint64_t)type;
@end

@implementation BlastDoorBasicTextMessageMessageTypeWrapper

- (NSString)description
{
  v2 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 104];
  v3 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 136];
  v24 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 120];
  v25[0] = v3;
  *(v25 + 9) = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 145];
  v4 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 40];
  v5 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 72];
  v20 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 56];
  v21 = v5;
  v6 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 72];
  v7 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 104];
  v22 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 88];
  v23 = v7;
  v8 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 8];
  v17[0] = *(&self->super.isa + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType);
  v17[1] = v8;
  v9 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 40];
  v11 = *(&self->super.isa + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType);
  v10 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 8];
  v18 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 24];
  v19 = v9;
  v12 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 136];
  v15[19] = v24;
  v16[0] = v12;
  *(v16 + 9) = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 145];
  v15[15] = v20;
  v15[16] = v6;
  v15[17] = v22;
  v15[18] = v2;
  v15[11] = v11;
  v15[12] = v10;
  v15[13] = v18;
  v15[14] = v4;
  sub_21409C7E8(v17, v15);
  sub_2146D9608();
  v13 = sub_2146D9588();

  return v13;
}

- (unint64_t)type
{
  v2 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 136];
  v9[8] = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 120];
  v10[0] = v2;
  *(v10 + 9) = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 145];
  v3 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 72];
  v9[4] = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 56];
  v9[5] = v3;
  v4 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 104];
  v9[6] = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 88];
  v9[7] = v4;
  v5 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 8];
  v9[0] = *(&self->super.isa + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType);
  v9[1] = v5;
  v6 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 40];
  v9[2] = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 24];
  v9[3] = v6;
  v7 = sub_2143223B0(v9);
  if (v7 > 2)
  {
    if (v7 == 3)
    {
      nullsub_1(v9);
      return 3;
    }

    else if (v7 == 4)
    {
      nullsub_1(v9);
      return 4;
    }

    else
    {
      nullsub_1(v9);
      return 5;
    }
  }

  else if (v7)
  {
    if (v7 == 1)
    {
      nullsub_1(v9);
      return 1;
    }

    else
    {
      nullsub_1(v9);
      return 2;
    }
  }

  else
  {
    nullsub_1(v9);
    return 0;
  }
}

- (BlastDoorBasicTypingIndicator)typingIndicator
{
  v2 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 104];
  v3 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 136];
  v33 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 120];
  v34[0] = v3;
  *(v34 + 9) = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 145];
  v4 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 40];
  v5 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 72];
  v29 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 56];
  v30 = v5;
  v6 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 72];
  v7 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 104];
  v31 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 88];
  v32 = v7;
  v8 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 8];
  v25 = *(&self->super.isa + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType);
  v26 = v8;
  v9 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 40];
  v11 = *(&self->super.isa + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType);
  v10 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 8];
  v27 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 24];
  v28 = v9;
  v12 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 136];
  v35[8] = v33;
  v36[0] = v12;
  *(v36 + 9) = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 145];
  v35[4] = v29;
  v35[5] = v6;
  v35[6] = v31;
  v35[7] = v2;
  v35[0] = v11;
  v35[1] = v10;
  v35[2] = v27;
  v35[3] = v4;
  if (sub_2143223B0(v35))
  {
    v13 = 0;
  }

  else
  {
    v14 = nullsub_1(v35);
    v15 = *v14;
    v16 = *(v14 + 8);
    v17 = type metadata accessor for _ObjCBasicTypingIndicatorWrapper();
    v18 = objc_allocWithZone(v17);
    v19 = &v18[OBJC_IVAR___BlastDoorBasicTypingIndicator_basicTypingIndicator];
    *v19 = v15;
    *(v19 + 1) = v16;
    v23[0] = v25;
    v23[1] = v26;
    v23[4] = v29;
    v23[5] = v30;
    v23[2] = v27;
    v23[3] = v28;
    *&v24[9] = *(v34 + 9);
    v23[8] = v33;
    *v24 = v34[0];
    v23[6] = v31;
    v23[7] = v32;
    v20 = *(nullsub_1(v23) + 8);
    v22.receiver = v18;
    v22.super_class = v17;

    v13 = [(BlastDoorBasicTextMessageMessageTypeWrapper *)&v22 init];
  }

  return v13;
}

- (BlastDoorBasicMessage)textMessage
{
  v2 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 104];
  v3 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 136];
  v37 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 120];
  v38[0] = v3;
  *(v38 + 9) = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 145];
  v4 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 40];
  v5 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 72];
  v33 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 56];
  v34 = v5;
  v6 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 72];
  v7 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 104];
  v35 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 88];
  v36 = v7;
  v8 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 8];
  v29 = *(&self->super.isa + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType);
  v30 = v8;
  v9 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 40];
  v11 = *(&self->super.isa + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType);
  v10 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 8];
  v31 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 24];
  v32 = v9;
  v12 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 136];
  v39[8] = v37;
  v40[0] = v12;
  *(v40 + 9) = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 145];
  v39[4] = v33;
  v39[5] = v6;
  v39[6] = v35;
  v39[7] = v2;
  v39[0] = v11;
  v39[1] = v10;
  v39[2] = v31;
  v39[3] = v4;
  if (sub_2143223B0(v39) == 1)
  {
    v13 = nullsub_1(v39);
    v14 = type metadata accessor for _ObjCBasicMessageWrapper();
    v15 = objc_allocWithZone(v14);
    v16 = &v15[OBJC_IVAR___BlastDoorBasicMessage_basicMessage];
    v18 = v13[1];
    v17 = v13[2];
    *v16 = *v13;
    *(v16 + 1) = v18;
    *(v16 + 2) = v17;
    v20 = v13[4];
    v19 = v13[5];
    v21 = v13[3];
    *(v16 + 89) = *(v13 + 89);
    *(v16 + 4) = v20;
    *(v16 + 5) = v19;
    *(v16 + 3) = v21;
    v27[8] = v37;
    v28[0] = v38[0];
    *(v28 + 9) = *(v38 + 9);
    v27[4] = v33;
    v27[5] = v34;
    v27[6] = v35;
    v27[7] = v36;
    v27[0] = v29;
    v27[1] = v30;
    v27[2] = v31;
    v27[3] = v32;
    v22 = nullsub_1(v27);
    sub_2142E5B20(v22, v26);
    v25.receiver = v15;
    v25.super_class = v14;
    v23 = [(BlastDoorBasicTextMessageMessageTypeWrapper *)&v25 init];
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (BlastDoorBasicTapBack)tapback
{
  v2 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 104];
  v3 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 136];
  v38 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 120];
  v39[0] = v3;
  *(v39 + 9) = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 145];
  v4 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 40];
  v5 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 72];
  v34 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 56];
  v35 = v5;
  v6 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 72];
  v7 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 104];
  v36 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 88];
  v37 = v7;
  v8 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 8];
  v30 = *(&self->super.isa + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType);
  v31 = v8;
  v9 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 40];
  v11 = *(&self->super.isa + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType);
  v10 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 8];
  v32 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 24];
  v33 = v9;
  v12 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 136];
  v40[8] = v38;
  v41[0] = v12;
  *(v41 + 9) = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 145];
  v40[4] = v34;
  v40[5] = v6;
  v40[6] = v36;
  v40[7] = v2;
  v40[0] = v11;
  v40[1] = v10;
  v40[2] = v32;
  v40[3] = v4;
  if (sub_2143223B0(v40) == 2)
  {
    v13 = nullsub_1(v40);
    v14 = type metadata accessor for _ObjCBasicTapBackWrapper();
    v15 = objc_allocWithZone(v14);
    v16 = &v15[OBJC_IVAR___BlastDoorBasicTapBack_basicTapBack];
    v17 = v13[3];
    v19 = *v13;
    v18 = v13[1];
    *(v16 + 2) = v13[2];
    *(v16 + 3) = v17;
    *v16 = v19;
    *(v16 + 1) = v18;
    v20 = v13[7];
    v22 = v13[4];
    v21 = v13[5];
    *(v16 + 6) = v13[6];
    *(v16 + 7) = v20;
    *(v16 + 4) = v22;
    *(v16 + 5) = v21;
    v28[0] = v30;
    v28[1] = v31;
    v28[4] = v34;
    v28[5] = v35;
    v28[2] = v32;
    v28[3] = v33;
    *(v29 + 9) = *(v39 + 9);
    v28[8] = v38;
    v29[0] = v39[0];
    v28[6] = v36;
    v28[7] = v37;
    v23 = nullsub_1(v28);
    sub_2142E5C78(v23, v27);
    v26.receiver = v15;
    v26.super_class = v14;
    v24 = [(BlastDoorBasicTextMessageMessageTypeWrapper *)&v26 init];
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (BlastDoorBasicAudioMessage)audioMessage
{
  v2 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 104];
  v3 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 136];
  v35 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 120];
  v36[0] = v3;
  *(v36 + 9) = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 145];
  v4 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 40];
  v5 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 72];
  v31 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 56];
  v32 = v5;
  v6 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 72];
  v7 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 104];
  v33 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 88];
  v34 = v7;
  v8 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 8];
  v27 = *(&self->super.isa + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType);
  v28 = v8;
  v9 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 40];
  v11 = *(&self->super.isa + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType);
  v10 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 8];
  v29 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 24];
  v30 = v9;
  v12 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 136];
  v37[8] = v35;
  v38[0] = v12;
  *(v38 + 9) = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 145];
  v37[4] = v31;
  v37[5] = v6;
  v37[6] = v33;
  v37[7] = v2;
  v37[0] = v11;
  v37[1] = v10;
  v37[2] = v29;
  v37[3] = v4;
  if (sub_2143223B0(v37) == 3)
  {
    v13 = nullsub_1(v37);
    v14 = type metadata accessor for _ObjCBasicAudioMessageWrapper();
    v15 = objc_allocWithZone(v14);
    v16 = &v15[OBJC_IVAR___BlastDoorBasicAudioMessage_basicAudioMessage];
    v17 = v13[3];
    v19 = *v13;
    v18 = v13[1];
    *(v16 + 2) = v13[2];
    *(v16 + 3) = v17;
    *v16 = v19;
    *(v16 + 1) = v18;
    v25[0] = v27;
    v25[1] = v28;
    v25[4] = v31;
    v25[5] = v32;
    v25[2] = v29;
    v25[3] = v30;
    *&v26[9] = *(v36 + 9);
    v25[8] = v35;
    *v26 = v36[0];
    v25[6] = v33;
    v25[7] = v34;
    v20 = nullsub_1(v25);
    sub_2142E55D0(v20, v24);
    v23.receiver = v15;
    v23.super_class = v14;
    v21 = [(BlastDoorBasicTextMessageMessageTypeWrapper *)&v23 init];
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (BlastDoorUnsupportedMessage)unsupported
{
  v2 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 104];
  v3 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 136];
  v36 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 120];
  v37[0] = v3;
  *(v37 + 9) = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 145];
  v4 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 40];
  v5 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 72];
  v32 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 56];
  v33 = v5;
  v6 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 72];
  v7 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 104];
  v34 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 88];
  v35 = v7;
  v8 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 8];
  v28 = *(&self->super.isa + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType);
  v29 = v8;
  v9 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 40];
  v11 = *(&self->super.isa + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType);
  v10 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 8];
  v30 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 24];
  v31 = v9;
  v12 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 136];
  v38[8] = v36;
  v39[0] = v12;
  *(v39 + 9) = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 145];
  v38[4] = v32;
  v38[5] = v6;
  v38[6] = v34;
  v38[7] = v2;
  v38[0] = v11;
  v38[1] = v10;
  v38[2] = v30;
  v38[3] = v4;
  if (sub_2143223B0(v38) == 4)
  {
    v13 = nullsub_1(v38);
    v14 = *(v13 + 16);
    v15 = *(v13 + 24);
    v16 = type metadata accessor for _ObjCUnsupportedMessageWrapper();
    v24 = *v13;
    v17 = objc_allocWithZone(v16);
    v18 = &v17[OBJC_IVAR___BlastDoorUnsupportedMessage_unsupportedMessage];
    *v18 = v24;
    *(v18 + 2) = v14;
    v18[24] = v15;
    v26[0] = v28;
    v26[1] = v29;
    v26[4] = v32;
    v26[5] = v33;
    v26[2] = v30;
    v26[3] = v31;
    *&v27[9] = *(v37 + 9);
    v26[8] = v36;
    *v27 = v37[0];
    v26[6] = v34;
    v26[7] = v35;
    v19 = nullsub_1(v26);
    v20 = *(v19 + 8);
    v21 = *(v19 + 16);
    v25.receiver = v17;
    v25.super_class = v16;

    v22 = [(BlastDoorBasicTextMessageMessageTypeWrapper *)&v25 init];
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (BlastDoorBasicEmojiTapback)emojiTapback
{
  v2 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 120];
  v3 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 88];
  v38 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 104];
  v39 = v2;
  v4 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 120];
  v40[0] = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 136];
  *(v40 + 9) = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 145];
  v5 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 40];
  v6 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 72];
  v35 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 56];
  v36 = v6;
  v7 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 72];
  v37 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 88];
  v8 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 8];
  v31 = *(&self->super.isa + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType);
  v32 = v8;
  v9 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 40];
  v11 = *(&self->super.isa + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType);
  v10 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 8];
  v33 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 24];
  v34 = v9;
  v41[7] = v38;
  v41[8] = v4;
  v42[0] = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 136];
  *(v42 + 9) = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 145];
  v41[4] = v35;
  v41[5] = v7;
  v41[6] = v3;
  v41[0] = v11;
  v41[1] = v10;
  v41[2] = v33;
  v41[3] = v5;
  if (sub_2143223B0(v41) == 5)
  {
    v12 = nullsub_1(v41);
    v13 = type metadata accessor for _ObjCBasicEmojiTapbackWrapper();
    v14 = objc_allocWithZone(v13);
    v15 = &v14[OBJC_IVAR___BlastDoorBasicEmojiTapback_basicEmojiTapback];
    v17 = *(v12 + 16);
    v16 = *(v12 + 32);
    *v15 = *v12;
    *(v15 + 1) = v17;
    *(v15 + 2) = v16;
    v18 = *(v12 + 96);
    v20 = *(v12 + 48);
    v19 = *(v12 + 64);
    *(v15 + 5) = *(v12 + 80);
    *(v15 + 6) = v18;
    *(v15 + 3) = v20;
    *(v15 + 4) = v19;
    v22 = *(v12 + 128);
    v21 = *(v12 + 144);
    v23 = *(v12 + 112);
    *(v15 + 20) = *(v12 + 160);
    *(v15 + 8) = v22;
    *(v15 + 9) = v21;
    *(v15 + 7) = v23;
    v29[8] = v39;
    v30[0] = v40[0];
    *(v30 + 9) = *(v40 + 9);
    v29[4] = v35;
    v29[5] = v36;
    v29[6] = v37;
    v29[7] = v38;
    v29[0] = v31;
    v29[1] = v32;
    v29[2] = v33;
    v29[3] = v34;
    v24 = nullsub_1(v29);
    sub_2142E58CC(v24, v28);
    v27.receiver = v14;
    v27.super_class = v13;
    v25 = [(BlastDoorBasicTextMessageMessageTypeWrapper *)&v27 init];
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

- (BlastDoorBasicTextMessageMessageTypeWrapper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
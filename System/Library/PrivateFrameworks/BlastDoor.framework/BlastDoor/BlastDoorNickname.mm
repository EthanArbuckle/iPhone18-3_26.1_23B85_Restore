@interface BlastDoorNickname
- (BlastDoorAvatarImage)avatar;
- (BlastDoorMorphology)pronouns;
- (BlastDoorNickname)init;
- (BlastDoorWallpaper)wallpaper;
- (NSData)avatarRecipe;
@end

@implementation BlastDoorNickname

- (BlastDoorAvatarImage)avatar
{
  selfCopy = self;
  v3 = sub_214569594();

  return v3;
}

- (BlastDoorWallpaper)wallpaper
{
  selfCopy = self;
  v3 = sub_2145696F4();

  return v3;
}

- (BlastDoorMorphology)pronouns
{
  v2 = self + OBJC_IVAR___BlastDoorNickname_nickname;
  v3 = &v2[*(type metadata accessor for Nickname(0) + 32)];
  v4 = *(v3 + 1);
  if (v4)
  {
    v5 = *v3;
    v6 = *v3 >> 8;
    v7 = *v3 >> 16;
    v8 = type metadata accessor for _ObjCMorphologyWrapper();
    v9 = objc_allocWithZone(v8);
    v10 = &v9[OBJC_IVAR___BlastDoorMorphology_morphology];
    *v10 = v5;
    v10[1] = v6;
    v10[2] = v7;
    *(v10 + 1) = v4;
    v13.receiver = v9;
    v13.super_class = v8;

    v11 = [(BlastDoorNickname *)&v13 init];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (NSData)avatarRecipe
{
  v3 = self + OBJC_IVAR___BlastDoorNickname_nickname;
  v4 = type metadata accessor for Nickname(0);
  v5 = 0;
  v6 = &v3[*(v4 + 36)];
  v7 = *(v6 + 3);
  v22 = *(v6 + 2);
  v23[0] = v7;
  *(v23 + 10) = *(v6 + 58);
  v8 = *(v6 + 1);
  v21[0] = *v6;
  v21[1] = v8;
  if (v22 != 0xFF)
  {
    v9 = *(v6 + 1);
    v16[5] = *v6;
    v16[6] = v9;
    v17 = v22;
    v18 = *(v6 + 40);
    v19 = *(v6 + 56);
    v20 = *(v6 + 36);
    selfCopy = self;
    sub_213FB2E54(v21, v16, &qword_27C9143A0, &qword_21474BF00);
    v11 = sub_214487890();
    v13 = v12;
    v14 = sub_2146D8A38();

    sub_213FB2DF4(v21, &qword_27C9143A0, &qword_21474BF00);
    sub_213FB54FC(v11, v13);
    v5 = v14;
  }

  return v5;
}

- (BlastDoorNickname)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
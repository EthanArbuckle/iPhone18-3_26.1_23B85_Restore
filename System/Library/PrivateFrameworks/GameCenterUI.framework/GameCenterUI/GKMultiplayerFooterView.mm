@interface GKMultiplayerFooterView
- (BOOL)inviteFriendsButtonEnabled;
- (BOOL)inviteFriendsButtonHidden;
- (BOOL)startGameButtonEnabled;
- (CGSize)sizeThatFits:(CGSize)a3;
- (JUMeasurements)measurementsWithFitting:(CGSize)a3 in:(id)a4;
- (void)configureUsing:(id)a3;
- (void)layoutSubviews;
- (void)setInviteFriendsButtonEnabled:(BOOL)a3;
- (void)setInviteFriendsButtonHidden:(BOOL)a3;
- (void)setInviteFriendsHandler:(id)a3;
- (void)setStartGameButtonEnabled:(BOOL)a3;
- (void)setStartGameHandler:(id)a3;
- (void)wantsMaterialBackgroundWithScrollOffset:(double)a3;
@end

@implementation GKMultiplayerFooterView

- (void)wantsMaterialBackgroundWithScrollOffset:(double)a3
{
  v4 = self;
  sub_24E03725C(a3);
}

- (BOOL)startGameButtonEnabled
{
  v2 = self;
  v3 = sub_24E0375FC();

  return v3 & 1;
}

- (void)setStartGameButtonEnabled:(BOOL)a3
{
  v4 = self;
  sub_24E03765C(a3);
}

- (BOOL)inviteFriendsButtonEnabled
{
  v2 = self;
  v3 = sub_24E0377E4();

  return v3 & 1;
}

- (void)setInviteFriendsButtonEnabled:(BOOL)a3
{
  v4 = self;
  sub_24E03788C(a3);
}

- (BOOL)inviteFriendsButtonHidden
{
  v2 = self;
  v3 = sub_24E0379BC();

  return v3 & 1;
}

- (void)setInviteFriendsButtonHidden:(BOOL)a3
{
  v3 = self;
  sub_24E037A3C();
}

- (void)setStartGameHandler:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_24E00CEE0;
  }

  else
  {
    v5 = 0;
  }

  v6 = self;
  sub_24E0380D4(v4, v5);
}

- (void)setInviteFriendsHandler:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_24DFA0D08;
  }

  else
  {
    v5 = 0;
  }

  v6 = self;
  sub_24E0383F0(v4, v5);
}

- (void)configureUsing:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24E038668();
}

- (void)layoutSubviews
{
  v2 = self;
  sub_24E038730();
}

- (JUMeasurements)measurementsWithFitting:(CGSize)a3 in:(id)a4
{
  width = a3.width;
  swift_unknownObjectRetain();
  v6 = self;
  sub_24E038DB4(width);
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  swift_unknownObjectRelease();

  v15 = v8;
  v16 = v10;
  v17 = v12;
  v18 = v14;
  result.var3 = v18;
  result.var2 = v17;
  result.var1 = v16;
  result.var0 = v15;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = self;
  sub_24DFB64A4();
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

@end
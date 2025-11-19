@interface RoutePickerAllSpeakersButton
- (CGSize)intrinsicContentSize;
- (_TtC13MediaControls28RoutePickerAllSpeakersButton)initWithCoder:(id)a3;
@end

@implementation RoutePickerAllSpeakersButton

- (_TtC13MediaControls28RoutePickerAllSpeakersButton)initWithCoder:(id)a3
{
  v3 = self + OBJC_IVAR____TtC13MediaControls28RoutePickerAllSpeakersButton_style;
  v4 = *MEMORY[0x1E69DDD08];
  sub_1A211476C();
  v6 = v5;
  v7 = sub_1A21146A4(v5, *MEMORY[0x1E69DB980]);
  v9 = v8;
  v11 = v10;
  v13 = v12;

  *v3 = v7;
  *(v3 + 1) = v9;
  *(v3 + 4) = v11;
  v3[20] = BYTE4(v11) & 1;
  *(v3 + 3) = v13;
  result = sub_1A22E7028();
  __break(1u);
  return result;
}

- (CGSize)intrinsicContentSize
{
  v13.receiver = self;
  v13.super_class = type metadata accessor for RoutePickerAllSpeakersButton();
  v2 = v13.receiver;
  [(RoutePickerAllSpeakersButton *)&v13 intrinsicContentSize];
  v4 = v3;
  v6 = v5;
  sub_1A22E6B78();
  v8 = v4 + v7;
  sub_1A22E6B88();
  v10 = v9;

  v11 = v6 + v10;
  v12 = v8;
  result.height = v11;
  result.width = v12;
  return result;
}

@end
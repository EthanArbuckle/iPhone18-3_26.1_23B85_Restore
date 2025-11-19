@interface PregnancyLactationInteractionCriticalAlertCell
- (void)_bridgedUpdateConfigurationUsingState:(id)a3;
- (void)awakeFromNib;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
@end

@implementation PregnancyLactationInteractionCriticalAlertCell

- (void)awakeFromNib
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for PregnancyLactationInteractionCriticalAlertCell();
  v2 = v4.receiver;
  [(PregnancyLactationInteractionCriticalAlertCell *)&v4 awakeFromNib];
  sub_2283922A0();
  v3[2] = v2;
  sub_22817F074(sub_228205AE8, v3);
}

- (void)_bridgedUpdateConfigurationUsingState:(id)a3
{
  v4 = sub_228391350();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228391340();
  v9 = self;
  sub_228202CB4();

  (*(v5 + 8))(v8, v4);
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  sub_22817A958(0, &qword_27D825178, 0x277D75C68);
  sub_228205394();
  v6 = sub_228392480();
  v7 = self;
  v8 = a4;
  v9 = sub_22820213C(v6);
  if (v9 && (v10 = v9, v11 = sub_2282030D0(), v12 = MEMORY[0x22AAB66C0](v10, v11, 36.0, 36.0), v11, v10, (v12 & 1) != 0))
  {
  }

  else
  {
    v13 = sub_228392470();

    v14.receiver = v7;
    v14.super_class = type metadata accessor for PregnancyLactationInteractionCriticalAlertCell();
    [(PregnancyLactationInteractionCriticalAlertCell *)&v14 touchesBegan:v13 withEvent:v8];
  }
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  sub_22817A958(0, &qword_27D825178, 0x277D75C68);
  sub_228205394();
  v6 = sub_228392480();
  v7 = a4;
  v8 = self;
  sub_22820554C(v6, a4);
}

@end
@interface AudioPlayerView.AudioPlayerViewModel
- (void)audioControllerPlayPauseToggled:(id)a3;
- (void)audioControllerStopped:(id)a3;
- (void)audioControllerTimeChanged:(id)a3;
- (void)takeValuesViaNotification;
@end

@implementation AudioPlayerView.AudioPlayerViewModel

- (void)takeValuesViaNotification
{

  sub_215389F2C();
}

- (void)audioControllerTimeChanged:(id)a3
{
  v3 = sub_21549E19C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21549E16C();

  sub_21538B230();

  (*(v4 + 8))(v6, v3);
}

- (void)audioControllerPlayPauseToggled:(id)a3
{
  v3 = sub_21549E19C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21549E16C();

  sub_21538B61C();

  (*(v4 + 8))(v6, v3);
}

- (void)audioControllerStopped:(id)a3
{
  v4 = sub_21549E19C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21549E16C();
  swift_getKeyPath();
  v8[1] = self;
  sub_21538E200(&qword_27CA5B518, type metadata accessor for AudioPlayerView.AudioPlayerViewModel);

  sub_21549ED9C();

  sub_21538D958(*&self->_assetDuration[6], 0, 0);

  (*(v5 + 8))(v7, v4);
}

@end
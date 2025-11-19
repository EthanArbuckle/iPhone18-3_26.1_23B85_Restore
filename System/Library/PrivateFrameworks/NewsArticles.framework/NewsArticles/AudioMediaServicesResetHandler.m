@interface AudioMediaServicesResetHandler
- (void)handleMediaServicesReset:(id)a3;
@end

@implementation AudioMediaServicesResetHandler

- (void)handleMediaServicesReset:(id)a3
{
  v4 = sub_1D7D2802C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7D27FFC();
  v9 = qword_1EE0C05E0;

  if (v9 != -1)
  {
    swift_once();
  }

  sub_1D7D30C4C();
  sub_1D79F3AB0();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1D7D3B4D0;
  sub_1D7CA8738();
  v11 = sub_1D7D3190C();
  v13 = v12;
  *(v10 + 56) = MEMORY[0x1E69E6158];
  *(v10 + 64) = sub_1D79D6AE0();
  *(v10 + 32) = v11;
  *(v10 + 40) = v13;
  sub_1D7D29AAC();

  (*self->stopPlayer)(v14);

  (*(v5 + 8))(v8, v4);
}

@end
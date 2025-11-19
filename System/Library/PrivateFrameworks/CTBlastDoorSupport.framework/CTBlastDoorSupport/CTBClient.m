@interface CTBClient
- (CTBClient)init;
- (CTBClient)initWithAutoBugCaptureHelper:(id)a3;
- (id)unpackChatBotMessageJSONData:(id)a3 options:(UnpackOptions)a4 error:(id *)a5;
- (id)unpackGeoPushLocationXMLData:(id)a3 error:(id *)a4;
@end

@implementation CTBClient

- (CTBClient)init
{
  v3 = objc_alloc_init(AutoBugCaptureHelper);
  v4 = [(CTBClient *)self initWithAutoBugCaptureHelper:v3];

  return v4;
}

- (CTBClient)initWithAutoBugCaptureHelper:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CTBClient;
  v6 = [(CTBClient *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_autoBugCaptureHelper, a3);
  }

  return v7;
}

- (id)unpackGeoPushLocationXMLData:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = self;
  v7 = sub_2426A9880();
  v9 = v8;

  v10 = sub_2426A9D20();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_242664F58(v7, v9);
  v14 = sub_24266A230(v6, v7, v9);
  v20[1] = v20;
  MEMORY[0x28223BE20](v14);
  (*(v11 + 16))(v20 - v13, v20 - v13, v10);
  v25.fLatitude = sub_24269006C(v20 - v13);
  ctb::bridging::makeOptional(v25, &v21);
  v15 = v21;
  v16 = v22;
  LOBYTE(v12) = v23;
  v17 = objc_allocWithZone(CTBGeoPushLocationWrapper);
  v21 = v15;
  v22 = v16;
  v23 = v12;
  v18 = [v17 initWithWrapped_];
  (*(v11 + 8))(v20 - v13, v10);

  sub_2426662F4(v7, v9);

  return v18;
}

- (id)unpackChatBotMessageJSONData:(id)a3 options:(UnpackOptions)a4 error:(id *)a5
{
  v7 = a3;
  v8 = self;
  v9 = sub_2426A9880();
  v11 = v10;

  v12 = sub_24266FCB4(v9, v11, *&a4 & 0x1FF);
  sub_2426662F4(v9, v11);

  return v12;
}

@end
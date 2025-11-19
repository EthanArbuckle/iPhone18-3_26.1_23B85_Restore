@interface MRLogForCategory
@end

@implementation MRLogForCategory

void ___MRLogForCategory_block_invoke()
{
  v0 = os_log_create("com.apple.amp.mediaremote", "MediaRemote");
  v1 = _MRLogForCategory___logs[0];
  _MRLogForCategory___logs[0] = v0;

  v2 = os_log_create("com.apple.amp.mediaremote", "NowPlaying");
  v3 = qword_1ED7E8298;
  qword_1ED7E8298 = v2;

  v4 = os_log_create("com.apple.amp.mediaremote", "RemoteControl");
  v5 = qword_1ED7E82A0;
  qword_1ED7E82A0 = v4;

  v6 = os_log_create("com.apple.amp.mediaremote", "ExternalDevice");
  v7 = qword_1ED7E82A8;
  qword_1ED7E82A8 = v6;

  v8 = os_log_create("com.apple.amp.mediaremote", "Television");
  v9 = qword_1ED7E82B0;
  qword_1ED7E82B0 = v8;

  v10 = os_log_create("com.apple.amp.mediaremote", "AudioInputPlugin");
  v11 = qword_1ED7E82B8;
  qword_1ED7E82B8 = v10;

  v12 = os_log_create("com.apple.amp.mediaremote", "Assertion");
  v13 = qword_1ED7E82C0;
  qword_1ED7E82C0 = v12;

  v14 = os_log_create("com.apple.amp.mediaremote", "Proximity");
  v15 = qword_1ED7E82C8;
  qword_1ED7E82C8 = v14;

  v16 = os_log_create("com.apple.amp.mediaremote", "XPC");
  v17 = qword_1ED7E82D0;
  qword_1ED7E82D0 = v16;

  v18 = os_log_create("com.apple.amp.mediaremote", "IDS");
  v19 = qword_1ED7E82D8;
  qword_1ED7E82D8 = v18;

  v20 = os_log_create("com.apple.amp.mediaremote", "rr");
  v21 = qword_1ED7E82E0;
  qword_1ED7E82E0 = v20;

  v22 = os_log_create("com.apple.amp.mediaremote", "UI");
  v23 = qword_1ED7E82E8;
  qword_1ED7E82E8 = v22;

  v24 = os_log_create("com.apple.amp.mediaremote", "GroupSession");
  v25 = qword_1ED7E82F0;
  qword_1ED7E82F0 = v24;

  v26 = os_log_create("com.apple.amp.mediaremote", "RouteRecommendation");
  v27 = qword_1ED7E82F8;
  qword_1ED7E82F8 = v26;

  v28 = os_log_create("com.apple.amp.mediaremote", "GroupSessionOversize");
  v29 = qword_1ED7E8300;
  qword_1ED7E8300 = v28;
}

@end
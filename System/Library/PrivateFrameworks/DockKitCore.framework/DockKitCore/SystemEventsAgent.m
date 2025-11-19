@interface SystemEventsAgent
- (void)deinitializePanoramaWithCompletionHandler:(id)a3;
- (void)deregisterSync;
- (void)deregisterWithCompletionHandler:(id)a3;
- (void)disconnectedWithErr:(id)a3;
- (void)getConnectedTrackerWithCompletionHandler:(id)a3;
- (void)initializePanoramaWithCompletionHandler:(id)a3;
- (void)registerWithCallback:(SystemEventsAgent *)self connectedCallback:(SEL)a2 completionHandler:(id)a3;
- (void)registerWithCallback:(id)a3 completionHandler:;
- (void)startPanoramaCaptureWithOrientation:(unsigned __int8)a3 finishedCallback:(id)a4 completionHandler:;
- (void)stateEventWithInfo:(id)a3 connectedState:(int64_t)a4 dockState:(int64_t)a5 trackingButtonState:(int64_t)a6;
- (void)stopPanoramaCaptureWithCompletionHandler:(id)a3;
- (void)systemEventDataWithInfo:(id)a3 data:(id)a4;
- (void)updatePanoramaCaptureDirection:(unsigned __int8)a3;
@end

@implementation SystemEventsAgent

- (void)registerWithCallback:(id)a3 completionHandler:
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(a3);
  v11 = _Block_copy(v4);
  v12 = swift_allocObject();
  v12[2] = v10;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_224627F78();
  (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_224632A48;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_224632A50;
  v15[5] = v14;
  v16 = self;
  sub_224616E14(0, 0, v9, &unk_224632A58, v15);
}

- (void)registerWithCallback:(SystemEventsAgent *)self connectedCallback:(SEL)a2 completionHandler:(id)a3
{
  v5 = v4;
  v6 = v3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(a3);
  v13 = _Block_copy(v6);
  v14 = _Block_copy(v5);
  v15 = swift_allocObject();
  v15[2] = v12;
  v15[3] = v13;
  v15[4] = v14;
  v15[5] = self;
  v16 = sub_224627F78();
  (*(*(v16 - 8) + 56))(v11, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_224632A28;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_224632A30;
  v18[5] = v17;
  v19 = self;
  sub_224616E14(0, 0, v11, &unk_224632A38, v18);
}

- (void)deregisterWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_224627F78();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_224632A08;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_224632A10;
  v12[5] = v11;
  v13 = self;
  sub_224616E14(0, 0, v7, &unk_224632A18, v12);
}

- (void)deregisterSync
{
  v2 = self;
  sub_2245CD0FC();
}

- (void)stateEventWithInfo:(id)a3 connectedState:(int64_t)a4 dockState:(int64_t)a5 trackingButtonState:(int64_t)a6
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v15 - v10;
  v12 = sub_224627F78();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = self;
  v13[5] = a4;
  v13[6] = a6;
  v14 = self;
  sub_224536440(0, 0, v11, &unk_2246329F8, v13);
}

- (void)getConnectedTrackerWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_224627F78();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_2246329E0;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_2246329E8;
  v12[5] = v11;
  v13 = self;
  sub_224616E14(0, 0, v7, &unk_2246329F0, v12);
}

- (void)systemEventDataWithInfo:(id)a3 data:(id)a4
{
  v4 = *(&self->super.isa + OBJC_IVAR___SystemEventsAgent_callback);
  if (v4)
  {
    v6 = a4;
    v7 = self;
    sub_2245122DC(v4);
    v4(v6);

    sub_224512308(v4);
  }
}

- (void)initializePanoramaWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_224627F78();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_2246329C0;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_2246329C8;
  v12[5] = v11;
  v13 = self;
  sub_224616E14(0, 0, v7, &unk_2246329D0, v12);
}

- (void)deinitializePanoramaWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_224627F78();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_2246329A0;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_2246329A8;
  v12[5] = v11;
  v13 = self;
  sub_224616E14(0, 0, v7, &unk_2246329B0, v12);
}

- (void)updatePanoramaCaptureDirection:(unsigned __int8)a3
{
  v3 = *(&self->super.isa + OBJC_IVAR___SystemEventsAgent_panoramaController);
  if (v3)
  {
    *(v3 + 26) = a3;
  }
}

- (void)startPanoramaCaptureWithOrientation:(unsigned __int8)a3 finishedCallback:(id)a4 completionHandler:
{
  v5 = v4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(a4);
  v13 = _Block_copy(v5);
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = v12;
  *(v14 + 32) = v13;
  *(v14 + 40) = self;
  v15 = sub_224627F78();
  (*(*(v15 - 8) + 56))(v11, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_224632980;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_224632988;
  v17[5] = v16;
  v18 = self;
  sub_224616E14(0, 0, v11, &unk_224632990, v17);
}

- (void)stopPanoramaCaptureWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_224627F78();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_224632970;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_2246336D0;
  v12[5] = v11;
  v13 = self;
  sub_224616E14(0, 0, v7, &unk_22462F560, v12);
}

- (void)disconnectedWithErr:(id)a3
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  v7 = sub_224627F78();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = self;
  v9 = self;
  sub_224536440(0, 0, v6, &unk_224632960, v8);
}

@end
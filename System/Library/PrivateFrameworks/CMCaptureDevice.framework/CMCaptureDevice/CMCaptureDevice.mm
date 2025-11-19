uint64_t FigCaptureISPProcessingSessionGetClassID()
{
  if (FigCaptureISPProcessingSessionGetClassID_onceToken != -1)
  {
    FigCaptureISPProcessingSessionGetClassID_cold_1();
  }

  return FigCaptureISPProcessingSessionGetClassID_sFigCaptureISPProcessingSessionClassID;
}

uint64_t __FigCaptureISPProcessingSessionGetClassID_block_invoke()
{
  ClassID = CMBaseGetClassID();

  return MEMORY[0x282112448](&sFigCaptureISPProcessingSessionDesc, ClassID, 1, &FigCaptureISPProcessingSessionGetClassID_sFigCaptureISPProcessingSessionClassID);
}

uint64_t FigCaptureISPProcessingSessionGetTypeID()
{
  if (FigCaptureISPProcessingSessionGetClassID_onceToken != -1)
  {
    FigCaptureISPProcessingSessionGetClassID_cold_1();
  }

  v1 = FigCaptureISPProcessingSessionGetClassID_sFigCaptureISPProcessingSessionClassID;

  return MEMORY[0x282111A98](v1);
}

uint64_t RegisterFigCaptureDeviceType()
{
  ClassID = CMBaseGetClassID();

  return MEMORY[0x282112448](&sFigCaptureDeviceDesc, ClassID, 1, &sFigCaptureDeviceID);
}

uint64_t FigCaptureDeviceGetTypeID()
{
  MEMORY[0x245D11210](&FigCaptureDeviceGetClassID_sRegisterFigCaptureDeviceTypeOnce, RegisterFigCaptureDeviceType);
  v0 = sFigCaptureDeviceID;

  return MEMORY[0x282111A98](v0);
}

uint64_t RegisterFigCaptureStreamType()
{
  ClassID = CMBaseGetClassID();

  return MEMORY[0x282112448](&sFigCaptureStreamDesc, ClassID, 1, &sFigCaptureStreamID);
}

uint64_t FigCaptureStreamGetTypeID()
{
  MEMORY[0x245D11210](&FigCaptureStreamGetClassID_sRegisterFigCaptureStreamTypeOnce, RegisterFigCaptureStreamType);
  v0 = sFigCaptureStreamID;

  return MEMORY[0x282111A98](v0);
}

uint64_t RegisterFigCaptureSynchronizedStreamsGroupType()
{
  ClassID = CMBaseGetClassID();

  return MEMORY[0x282112448](&sFigCaptureSynchronizedStreamsGroupDesc, ClassID, 1, &sFigCaptureSynchronizedStreamsGroupID);
}

uint64_t FigCaptureSynchronizedStreamsGroupGetTypeID()
{
  MEMORY[0x245D11210](&FigCaptureSynchronizedStreamsGroupGetClassID_sRegisterFigCaptureSynchronizedStreamsGroupTypeOnce, RegisterFigCaptureSynchronizedStreamsGroupType);
  v0 = sFigCaptureSynchronizedStreamsGroupID;

  return MEMORY[0x282111A98](v0);
}
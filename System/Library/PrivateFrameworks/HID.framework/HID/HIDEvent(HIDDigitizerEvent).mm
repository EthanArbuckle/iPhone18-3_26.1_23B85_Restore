@interface HIDEvent(HIDDigitizerEvent)
+ (char)digitizerEvent:()HIDDigitizerEvent transducerType:x:y:z:options:;
+ (char)polarDigitizerEvent:()HIDDigitizerEvent altitude:azimuth:quality:density:majorRadius:minorRadius:options:;
+ (char)qualityDigitizerEvent:()HIDDigitizerEvent quality:density:irregularity:majorRadius:minorRadius:accuracy:options:;
+ (char)tiltDigitizerEvent:()HIDDigitizerEvent x:y:options:;
@end

@implementation HIDEvent(HIDDigitizerEvent)

+ (char)digitizerEvent:()HIDDigitizerEvent transducerType:x:y:z:options:
{
  v11 = *MEMORY[0x277CBECE8];
  v12 = _IOHIDEventCreate();
  v13 = *&v12[*MEMORY[0x277CD2870] + 88];
  *(v13 + 44) = a7;
  *(v13 + 16) = self;
  *(v13 + 24) = a2;
  *(v13 + 32) = a3;

  return v12;
}

+ (char)tiltDigitizerEvent:()HIDDigitizerEvent x:y:options:
{
  v4 = *MEMORY[0x277CBECE8];
  v5 = _IOHIDEventCreate();
  v6 = *&v5[*MEMORY[0x277CD2870] + 88];
  *(v6 + 88) = 0;
  *(v6 + 96) = self;
  *(v6 + 104) = a2;

  return v5;
}

+ (char)polarDigitizerEvent:()HIDDigitizerEvent altitude:azimuth:quality:density:majorRadius:minorRadius:options:
{
  v12 = *MEMORY[0x277CBECE8];
  v13 = _IOHIDEventCreate();
  v14 = *&v13[*MEMORY[0x277CD2870] + 88];
  *(v14 + 88) = 1;
  *(v14 + 96) = self;
  *(v14 + 104) = a2;
  *(v14 + 112) = a3;
  *(v14 + 120) = a4;
  *(v14 + 128) = a5;
  *(v14 + 136) = a6;

  return v13;
}

+ (char)qualityDigitizerEvent:()HIDDigitizerEvent quality:density:irregularity:majorRadius:minorRadius:accuracy:options:
{
  v12 = *MEMORY[0x277CBECE8];
  v13 = _IOHIDEventCreate();
  v14 = *&v13[*MEMORY[0x277CD2870] + 88];
  *(v14 + 88) = 2;
  *(v14 + 96) = self;
  *(v14 + 104) = a2;
  *(v14 + 112) = a3;
  *(v14 + 120) = a4;
  *(v14 + 128) = a5;
  *(v14 + 136) = a6;

  return v13;
}

@end
@interface MSDKPeerDemoAXSettings
- (MSDKPeerDemoAXSettings)init;
- (MSDKPeerDemoAXSettings)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MSDKPeerDemoAXSettings

- (MSDKPeerDemoAXSettings)init
{
  v5.receiver = self;
  v5.super_class = MSDKPeerDemoAXSettings;
  v2 = [(MSDKPeerDemoAXSettings *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(MSDKPeerDemoAXSettings *)v2 setPointerControl:0];
    [(MSDKPeerDemoAXSettings *)v3 setGazeAccessibility:0];
    [(MSDKPeerDemoAXSettings *)v3 setStaticFoveation:0];
    [(MSDKPeerDemoAXSettings *)v3 setPointerControlHandChirality:0];
    [(MSDKPeerDemoAXSettings *)v3 setDwellControl:0];
    [(MSDKPeerDemoAXSettings *)v3 setVoiceOver:0];
    [(MSDKPeerDemoAXSettings *)v3 setClosedCaptions:0];
    [(MSDKPeerDemoAXSettings *)v3 setAssistiveTouch:0];
    [(MSDKPeerDemoAXSettings *)v3 setAudioDescriptions:0];
    [(MSDKPeerDemoAXSettings *)v3 setVoiceOverTutorial:0];
    [(MSDKPeerDemoAXSettings *)v3 setLiveTranscription:0];
  }

  return v3;
}

- (id)description
{
  v7 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v7 stringWithFormat:@"<%@[%p]: PointerControl=%lu GazeAccessibility=%lu StaticFoveation=%lu HandChirality=%lu DwellControll=%lu VoiceOver=%lu ClosedCaptions=%lu AssistiveTouch=%lu AudioDescriptions=%lu VoiceOverTutorial=%lu LiveTranscription=%lu>", v4, self, -[MSDKPeerDemoAXSettings pointerControl](self, "pointerControl"), -[MSDKPeerDemoAXSettings gazeAccessibility](self, "gazeAccessibility"), -[MSDKPeerDemoAXSettings staticFoveation](self, "staticFoveation"), -[MSDKPeerDemoAXSettings pointerControlHandChirality](self, "pointerControlHandChirality"), -[MSDKPeerDemoAXSettings dwellControl](self, "dwellControl"), -[MSDKPeerDemoAXSettings voiceOver](self, "voiceOver"), -[MSDKPeerDemoAXSettings closedCaptions](self, "closedCaptions"), -[MSDKPeerDemoAXSettings assistiveTouch](self, "assistiveTouch"), -[MSDKPeerDemoAXSettings audioDescriptions](self, "audioDescriptions"), -[MSDKPeerDemoAXSettings voiceOverTutorial](self, "voiceOverTutorial"), -[MSDKPeerDemoAXSettings liveTranscription](self, "liveTranscription")];

  return v5;
}

- (MSDKPeerDemoAXSettings)initWithCoder:(id)coder
{
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = MSDKPeerDemoAXSettings;
  v5 = [(MSDKPeerDemoAXSettings *)&v18 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pointerControl"];
    -[MSDKPeerDemoAXSettings setPointerControl:](v5, "setPointerControl:", [v6 unsignedIntegerValue]);

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"gazeAccessibility"];
    -[MSDKPeerDemoAXSettings setGazeAccessibility:](v5, "setGazeAccessibility:", [v7 unsignedIntegerValue]);

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"staticFoveation"];
    -[MSDKPeerDemoAXSettings setStaticFoveation:](v5, "setStaticFoveation:", [v8 unsignedIntegerValue]);

    if ([coderCopy containsValueForKey:@"pointerControlHandChirality"])
    {
      v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pointerControlHandChirality"];
      -[MSDKPeerDemoAXSettings setPointerControlHandChirality:](v5, "setPointerControlHandChirality:", [v9 unsignedIntegerValue]);
    }

    if ([coderCopy containsValueForKey:@"dwellControl"])
    {
      v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dwellControl"];
      -[MSDKPeerDemoAXSettings setDwellControl:](v5, "setDwellControl:", [v10 unsignedIntegerValue]);
    }

    if ([coderCopy containsValueForKey:@"voiceOver"])
    {
      v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"voiceOver"];
      -[MSDKPeerDemoAXSettings setVoiceOver:](v5, "setVoiceOver:", [v11 unsignedIntegerValue]);
    }

    if ([coderCopy containsValueForKey:@"closedCaptions"])
    {
      v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"closedCaptions"];
      -[MSDKPeerDemoAXSettings setClosedCaptions:](v5, "setClosedCaptions:", [v12 unsignedIntegerValue]);
    }

    if ([coderCopy containsValueForKey:@"assistiveTouch"])
    {
      v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"assistiveTouch"];
      -[MSDKPeerDemoAXSettings setAssistiveTouch:](v5, "setAssistiveTouch:", [v13 unsignedIntegerValue]);
    }

    if ([coderCopy containsValueForKey:@"audioDescriptions"])
    {
      v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"audioDescriptions"];
      -[MSDKPeerDemoAXSettings setAudioDescriptions:](v5, "setAudioDescriptions:", [v14 unsignedIntegerValue]);
    }

    if ([coderCopy containsValueForKey:@"voiceOverTutorial"])
    {
      v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"voiceOverTutorial"];
      -[MSDKPeerDemoAXSettings setVoiceOverTutorial:](v5, "setVoiceOverTutorial:", [v15 unsignedIntegerValue]);
    }

    if ([coderCopy containsValueForKey:@"liveTranscription"])
    {
      v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"liveTranscription"];
      -[MSDKPeerDemoAXSettings setLiveTranscription:](v5, "setLiveTranscription:", [v16 unsignedIntegerValue]);
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x277CCABB0];
  coderCopy = coder;
  v6 = [v4 numberWithUnsignedInteger:{-[MSDKPeerDemoAXSettings pointerControl](self, "pointerControl")}];
  [coderCopy encodeObject:v6 forKey:@"pointerControl"];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[MSDKPeerDemoAXSettings gazeAccessibility](self, "gazeAccessibility")}];
  [coderCopy encodeObject:v7 forKey:@"gazeAccessibility"];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[MSDKPeerDemoAXSettings staticFoveation](self, "staticFoveation")}];
  [coderCopy encodeObject:v8 forKey:@"staticFoveation"];

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[MSDKPeerDemoAXSettings pointerControlHandChirality](self, "pointerControlHandChirality")}];
  [coderCopy encodeObject:v9 forKey:@"pointerControlHandChirality"];

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[MSDKPeerDemoAXSettings dwellControl](self, "dwellControl")}];
  [coderCopy encodeObject:v10 forKey:@"dwellControl"];

  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[MSDKPeerDemoAXSettings voiceOver](self, "voiceOver")}];
  [coderCopy encodeObject:v11 forKey:@"voiceOver"];

  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[MSDKPeerDemoAXSettings closedCaptions](self, "closedCaptions")}];
  [coderCopy encodeObject:v12 forKey:@"closedCaptions"];

  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[MSDKPeerDemoAXSettings assistiveTouch](self, "assistiveTouch")}];
  [coderCopy encodeObject:v13 forKey:@"assistiveTouch"];

  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[MSDKPeerDemoAXSettings audioDescriptions](self, "audioDescriptions")}];
  [coderCopy encodeObject:v14 forKey:@"audioDescriptions"];

  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[MSDKPeerDemoAXSettings voiceOverTutorial](self, "voiceOverTutorial")}];
  [coderCopy encodeObject:v15 forKey:@"voiceOverTutorial"];

  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[MSDKPeerDemoAXSettings liveTranscription](self, "liveTranscription")}];
  [coderCopy encodeObject:v16 forKey:@"liveTranscription"];
}

@end
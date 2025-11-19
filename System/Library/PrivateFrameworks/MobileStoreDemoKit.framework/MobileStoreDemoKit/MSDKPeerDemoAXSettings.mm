@interface MSDKPeerDemoAXSettings
- (MSDKPeerDemoAXSettings)init;
- (MSDKPeerDemoAXSettings)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
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

- (MSDKPeerDemoAXSettings)initWithCoder:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = MSDKPeerDemoAXSettings;
  v5 = [(MSDKPeerDemoAXSettings *)&v18 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pointerControl"];
    -[MSDKPeerDemoAXSettings setPointerControl:](v5, "setPointerControl:", [v6 unsignedIntegerValue]);

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"gazeAccessibility"];
    -[MSDKPeerDemoAXSettings setGazeAccessibility:](v5, "setGazeAccessibility:", [v7 unsignedIntegerValue]);

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"staticFoveation"];
    -[MSDKPeerDemoAXSettings setStaticFoveation:](v5, "setStaticFoveation:", [v8 unsignedIntegerValue]);

    if ([v4 containsValueForKey:@"pointerControlHandChirality"])
    {
      v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pointerControlHandChirality"];
      -[MSDKPeerDemoAXSettings setPointerControlHandChirality:](v5, "setPointerControlHandChirality:", [v9 unsignedIntegerValue]);
    }

    if ([v4 containsValueForKey:@"dwellControl"])
    {
      v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dwellControl"];
      -[MSDKPeerDemoAXSettings setDwellControl:](v5, "setDwellControl:", [v10 unsignedIntegerValue]);
    }

    if ([v4 containsValueForKey:@"voiceOver"])
    {
      v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"voiceOver"];
      -[MSDKPeerDemoAXSettings setVoiceOver:](v5, "setVoiceOver:", [v11 unsignedIntegerValue]);
    }

    if ([v4 containsValueForKey:@"closedCaptions"])
    {
      v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"closedCaptions"];
      -[MSDKPeerDemoAXSettings setClosedCaptions:](v5, "setClosedCaptions:", [v12 unsignedIntegerValue]);
    }

    if ([v4 containsValueForKey:@"assistiveTouch"])
    {
      v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"assistiveTouch"];
      -[MSDKPeerDemoAXSettings setAssistiveTouch:](v5, "setAssistiveTouch:", [v13 unsignedIntegerValue]);
    }

    if ([v4 containsValueForKey:@"audioDescriptions"])
    {
      v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"audioDescriptions"];
      -[MSDKPeerDemoAXSettings setAudioDescriptions:](v5, "setAudioDescriptions:", [v14 unsignedIntegerValue]);
    }

    if ([v4 containsValueForKey:@"voiceOverTutorial"])
    {
      v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"voiceOverTutorial"];
      -[MSDKPeerDemoAXSettings setVoiceOverTutorial:](v5, "setVoiceOverTutorial:", [v15 unsignedIntegerValue]);
    }

    if ([v4 containsValueForKey:@"liveTranscription"])
    {
      v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"liveTranscription"];
      -[MSDKPeerDemoAXSettings setLiveTranscription:](v5, "setLiveTranscription:", [v16 unsignedIntegerValue]);
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  v6 = [v4 numberWithUnsignedInteger:{-[MSDKPeerDemoAXSettings pointerControl](self, "pointerControl")}];
  [v5 encodeObject:v6 forKey:@"pointerControl"];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[MSDKPeerDemoAXSettings gazeAccessibility](self, "gazeAccessibility")}];
  [v5 encodeObject:v7 forKey:@"gazeAccessibility"];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[MSDKPeerDemoAXSettings staticFoveation](self, "staticFoveation")}];
  [v5 encodeObject:v8 forKey:@"staticFoveation"];

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[MSDKPeerDemoAXSettings pointerControlHandChirality](self, "pointerControlHandChirality")}];
  [v5 encodeObject:v9 forKey:@"pointerControlHandChirality"];

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[MSDKPeerDemoAXSettings dwellControl](self, "dwellControl")}];
  [v5 encodeObject:v10 forKey:@"dwellControl"];

  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[MSDKPeerDemoAXSettings voiceOver](self, "voiceOver")}];
  [v5 encodeObject:v11 forKey:@"voiceOver"];

  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[MSDKPeerDemoAXSettings closedCaptions](self, "closedCaptions")}];
  [v5 encodeObject:v12 forKey:@"closedCaptions"];

  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[MSDKPeerDemoAXSettings assistiveTouch](self, "assistiveTouch")}];
  [v5 encodeObject:v13 forKey:@"assistiveTouch"];

  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[MSDKPeerDemoAXSettings audioDescriptions](self, "audioDescriptions")}];
  [v5 encodeObject:v14 forKey:@"audioDescriptions"];

  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[MSDKPeerDemoAXSettings voiceOverTutorial](self, "voiceOverTutorial")}];
  [v5 encodeObject:v15 forKey:@"voiceOverTutorial"];

  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[MSDKPeerDemoAXSettings liveTranscription](self, "liveTranscription")}];
  [v5 encodeObject:v16 forKey:@"liveTranscription"];
}

@end
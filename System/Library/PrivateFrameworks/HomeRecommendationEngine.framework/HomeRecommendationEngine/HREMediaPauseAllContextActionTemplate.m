@interface HREMediaPauseAllContextActionTemplate
- (HREMediaPauseAllContextActionTemplate)init;
- (id)_lazy_actionMap;
@end

@implementation HREMediaPauseAllContextActionTemplate

- (HREMediaPauseAllContextActionTemplate)init
{
  v6.receiver = self;
  v6.super_class = HREMediaPauseAllContextActionTemplate;
  v2 = [(HRETemplate *)&v6 init];
  if (v2)
  {
    v3 = _HRELocalizedStringWithDefaultValue(@"HREContextActionNamePauseAll", @"HREContextActionNamePauseAll", 1);
    [(HREContextActionTemplate *)v2 setContextActionName:v3];

    v4 = [objc_alloc(MEMORY[0x277D14728]) initWithSystemImageNamed:@"tv.and.hifispeaker.fill"];
    [(HREContextActionTemplate *)v2 setIconDescriptor:v4];

    [(HRETemplate *)v2 setIdentifier:@"mediaPauseAllContextAction"];
    [(HRETemplate *)v2 setSortingPriority:4.0];
  }

  return v2;
}

- (id)_lazy_actionMap
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = NSStringFromProtocol(&unk_28666EF10);
  v7 = v2;
  v3 = [HREMediaPlaybackActionMap actionMapWithState:2 volume:0 playbackArchive:0];
  v8[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

@end
@interface NACDaemonServer
+ (id)companionServer;
+ (id)gizmoServer;
@end

@implementation NACDaemonServer

+ (id)gizmoServer
{
  if (gizmoServer_onceToken != -1)
  {
    +[NACDaemonServer gizmoServer];
  }

  v3 = gizmoServer_server;

  return v3;
}

uint64_t __30__NACDaemonServer_gizmoServer__block_invoke()
{
  v8[1] = *MEMORY[0x277D85DE8];
  v0 = objc_opt_new();
  v1 = gizmoServer_server;
  gizmoServer_server = v0;

  v2 = [NACIDSServer alloc];
  v8[0] = @"Ringtone";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  v4 = [(NACIDSServer *)v2 initWithVolumeAudioCategories:v3];
  v5 = *(gizmoServer_server + 8);
  *(gizmoServer_server + 8) = v4;

  [*(gizmoServer_server + 8) beginObservingHapticState];
  result = [*(gizmoServer_server + 8) beginObservingSystemMutedState];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

+ (id)companionServer
{
  if (companionServer_onceToken != -1)
  {
    +[NACDaemonServer companionServer];
  }

  v3 = companionServer_server;

  return v3;
}

void __34__NACDaemonServer_companionServer__block_invoke()
{
  v7[1] = *MEMORY[0x277D85DE8];
  v0 = objc_opt_new();
  v1 = companionServer_server;
  companionServer_server = v0;

  v2 = [NACIDSServer alloc];
  v7[0] = @"Audio/Video";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  v4 = [(NACIDSServer *)v2 initWithVolumeAudioCategories:v3];
  v5 = *(companionServer_server + 8);
  *(companionServer_server + 8) = v4;

  v6 = *MEMORY[0x277D85DE8];
}

@end
@interface PBUIPosterFloatingLayerReplica
- (PBUIPosterFloatingLayerReplica)initWithFrame:(CGRect)frame;
- (void)setFloatingLayerStandin:(BOOL)standin;
@end

@implementation PBUIPosterFloatingLayerReplica

- (PBUIPosterFloatingLayerReplica)initWithFrame:(CGRect)frame
{
  v10.receiver = self;
  v10.super_class = PBUIPosterFloatingLayerReplica;
  v3 = [(PBUIPortalReplicaView *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(PBUIPortalReplicaView *)v3 setShouldMatchWallpaperPosition:1];
    [(PBUIPortalReplicaView *)v4 setHidesSourceView:1];
    debugView = [(PBUIPortalReplicaView *)v4 debugView];

    if (debugView)
    {
      debugView2 = [(PBUIPortalReplicaView *)v4 debugView];
      yellowColor = [MEMORY[0x277D75348] yellowColor];
      v8 = [yellowColor colorWithAlphaComponent:0.2];
      [debugView2 setColor:v8];
    }
  }

  return v4;
}

- (void)setFloatingLayerStandin:(BOOL)standin
{
  if (self->_floatingLayerStandin != standin)
  {
    self->_floatingLayerStandin = standin;
    [(PBUIPortalReplicaView *)self setNeedsSourceUpdate];
  }
}

@end
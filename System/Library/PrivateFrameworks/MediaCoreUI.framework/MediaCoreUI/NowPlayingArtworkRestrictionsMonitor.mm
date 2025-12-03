@interface NowPlayingArtworkRestrictionsMonitor
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation NowPlayingArtworkRestrictionsMonitor

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (path)
  {
    v10 = sub_1C5BCAE74();
    v12 = v11;
    if (object)
    {
      goto LABEL_3;
    }

LABEL_6:
    memset(v18, 0, sizeof(v18));
    changeCopy = change;
    selfCopy = self;
    if (change)
    {
      goto LABEL_4;
    }

LABEL_7:
    v15 = 0;
    goto LABEL_8;
  }

  v10 = 0;
  v12 = 0;
  if (!object)
  {
    goto LABEL_6;
  }

LABEL_3:
  swift_unknownObjectRetain();
  changeCopy2 = change;
  selfCopy2 = self;
  sub_1C5BCB8D4();
  swift_unknownObjectRelease();
  if (!change)
  {
    goto LABEL_7;
  }

LABEL_4:
  type metadata accessor for NSKeyValueChangeKey(0);
  sub_1C5929CEC(&qword_1EC190DB0, type metadata accessor for NSKeyValueChangeKey);
  v15 = sub_1C5BCACB4();

LABEL_8:
  sub_1C5B69124(v10, v12, v18, v15, context);

  sub_1C5924EF4(v18, &qword_1EC191700);
}

- (void)dealloc
{
  v3 = objc_opt_self();
  selfCopy = self;
  standardUserDefaults = [v3 standardUserDefaults];
  v6 = selfCopy;
  v7 = sub_1C5BCAE44();
  [standardUserDefaults removeObserver:v6 forKeyPath:v7];

  v8.receiver = v6;
  v8.super_class = type metadata accessor for NowPlayingArtworkRestrictionsMonitor();
  [(NowPlayingArtworkRestrictionsMonitor *)&v8 dealloc];
}

@end
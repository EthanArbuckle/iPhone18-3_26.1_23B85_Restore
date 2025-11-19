@interface NowPlayingArtworkRestrictionsMonitor
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
@end

@implementation NowPlayingArtworkRestrictionsMonitor

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (a3)
  {
    v10 = sub_1C5BCAE74();
    v12 = v11;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    memset(v18, 0, sizeof(v18));
    v16 = a5;
    v17 = self;
    if (a5)
    {
      goto LABEL_4;
    }

LABEL_7:
    v15 = 0;
    goto LABEL_8;
  }

  v10 = 0;
  v12 = 0;
  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  swift_unknownObjectRetain();
  v13 = a5;
  v14 = self;
  sub_1C5BCB8D4();
  swift_unknownObjectRelease();
  if (!a5)
  {
    goto LABEL_7;
  }

LABEL_4:
  type metadata accessor for NSKeyValueChangeKey(0);
  sub_1C5929CEC(&qword_1EC190DB0, type metadata accessor for NSKeyValueChangeKey);
  v15 = sub_1C5BCACB4();

LABEL_8:
  sub_1C5B69124(v10, v12, v18, v15, a6);

  sub_1C5924EF4(v18, &qword_1EC191700);
}

- (void)dealloc
{
  v3 = objc_opt_self();
  v4 = self;
  v5 = [v3 standardUserDefaults];
  v6 = v4;
  v7 = sub_1C5BCAE44();
  [v5 removeObserver:v6 forKeyPath:v7];

  v8.receiver = v6;
  v8.super_class = type metadata accessor for NowPlayingArtworkRestrictionsMonitor();
  [(NowPlayingArtworkRestrictionsMonitor *)&v8 dealloc];
}

@end
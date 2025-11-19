@interface MPCPodcastsDefaultsHelper
+ (MPCPodcastsDefaultsHelper)standard;
- (BOOL)remoteSkipInsteadOfNextTrack;
- (double)skipBackwardInterval;
- (double)skipForwardInterval;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
@end

@implementation MPCPodcastsDefaultsHelper

+ (MPCPodcastsDefaultsHelper)standard
{
  v2 = static PodcastsDefaultsHelper.standard.getter();

  return v2;
}

- (double)skipForwardInterval
{
  v2 = self;
  v3 = PodcastsDefaultsHelper.skipForwardInterval.getter();

  return v3;
}

- (double)skipBackwardInterval
{
  v2 = self;
  v3 = PodcastsDefaultsHelper.skipBackwardInterval.getter();

  return v3;
}

- (BOOL)remoteSkipInsteadOfNextTrack
{
  v2 = self;
  v3 = PodcastsDefaultsHelper.remoteSkipInsteadOfNextTrack.getter();

  return v3 & 1;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (a3)
  {
    v10 = sub_1C6016940();
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
  sub_1C6017390();
  swift_unknownObjectRelease();
  if (!a5)
  {
    goto LABEL_7;
  }

LABEL_4:
  type metadata accessor for NSKeyValueChangeKey();
  sub_1C5D0AB2C();
  v15 = sub_1C6016860();

LABEL_8:
  PodcastsDefaultsHelper.observeValue(forKeyPath:of:change:context:)(v10, v12, v18, v15, a6);

  sub_1C5CBCF4C(v18);
}

@end
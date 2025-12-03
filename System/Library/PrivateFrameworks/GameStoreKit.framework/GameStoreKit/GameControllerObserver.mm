@interface GameControllerObserver
- (NSString)description;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation GameControllerObserver

- (NSString)description
{
  selfCopy = self;
  GameControllerObserver.description.getter();

  v3 = sub_24F92B098();

  return v3;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (path)
  {
    v9 = sub_24F92B0D8();
    v11 = v10;
    if (object)
    {
      goto LABEL_3;
    }

LABEL_6:
    memset(v16, 0, sizeof(v16));
    changeCopy = change;
    selfCopy = self;
    if (!change)
    {
      goto LABEL_7;
    }

    goto LABEL_4;
  }

  v9 = 0;
  v11 = 0;
  if (!object)
  {
    goto LABEL_6;
  }

LABEL_3:
  swift_unknownObjectRetain();
  changeCopy2 = change;
  selfCopy2 = self;
  sub_24F92C648();
  swift_unknownObjectRelease();
  if (change)
  {
LABEL_4:
    type metadata accessor for NSKeyValueChangeKey(0);
    sub_24F733018(&qword_27F2126D0, type metadata accessor for NSKeyValueChangeKey);
    sub_24F92AE38();
  }

LABEL_7:
  _s12GameStoreKit0A18ControllerObserverC12observeValue10forKeyPath2of6change7contextySSSg_ypSgSDySo05NSKeyg6ChangeI0aypGSgSvSgtF_0(v9, v11, v16);

  sub_24E601704(v16, &qword_27F2129B0);
}

@end
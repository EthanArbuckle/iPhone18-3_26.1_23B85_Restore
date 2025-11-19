@interface Stravinsky
+ (id)GetOrchestrationDelegate;
- (_TtC22CoreAudioOrchestration10Stravinsky)init;
@end

@implementation Stravinsky

+ (id)GetOrchestrationDelegate
{
  if (qword_27EDF6710 != -1)
  {
    swift_once();
  }

  v3 = qword_27EDF6DD0;

  return v3;
}

- (_TtC22CoreAudioOrchestration10Stravinsky)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for Stravinsky();
  return [(Stravinsky *)&v3 init];
}

@end
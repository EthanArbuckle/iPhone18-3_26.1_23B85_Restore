@interface _PADClassifier
- (_PADClassifier)init;
- (void)processRecordedLivenessFrame:(id)a3 withPRD:(BOOL)a4 FAC:(BOOL)a5;
@end

@implementation _PADClassifier

- (_PADClassifier)init
{
  v6.receiver = self;
  v6.super_class = _PADClassifier;
  v2 = [(_PADClassifier *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(_TtC10CoreIDVPAD21PADInternalClassifier);
    classifier = v2->_classifier;
    v2->_classifier = v3;
  }

  return v2;
}

- (void)processRecordedLivenessFrame:(id)a3 withPRD:(BOOL)a4 FAC:(BOOL)a5
{
  classifier = self->_classifier;
  v6 = 0x10000;
  if (!a4)
  {
    v6 = 0;
  }

  v7 = 257;
  if (!a5)
  {
    v7 = 1;
  }

  [(PADInternalClassifier *)classifier processLivenessFrame:a3 withOptions:v7 | v6 taOptions:1];
}

@end
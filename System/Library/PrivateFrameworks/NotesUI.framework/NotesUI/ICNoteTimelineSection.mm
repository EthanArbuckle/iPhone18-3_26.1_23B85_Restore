@interface ICNoteTimelineSection
- (ICNoteTimelineSection)initWithIdentifier:(id)a3 objectIDs:(id)a4;
@end

@implementation ICNoteTimelineSection

- (ICNoteTimelineSection)initWithIdentifier:(id)a3 objectIDs:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = ICNoteTimelineSection;
  v8 = [(ICNoteTimelineSection *)&v12 init];
  v9 = v8;
  if (v8)
  {
    [(ICNoteTimelineSection *)v8 setIdentifier:v6];
    v10 = [v7 copy];
    [(ICNoteTimelineSection *)v9 setObjectIDs:v10];
  }

  return v9;
}

@end
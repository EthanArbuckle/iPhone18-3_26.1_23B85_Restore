@interface ICNoteTimelineSection
- (ICNoteTimelineSection)initWithIdentifier:(id)identifier objectIDs:(id)ds;
@end

@implementation ICNoteTimelineSection

- (ICNoteTimelineSection)initWithIdentifier:(id)identifier objectIDs:(id)ds
{
  identifierCopy = identifier;
  dsCopy = ds;
  v12.receiver = self;
  v12.super_class = ICNoteTimelineSection;
  v8 = [(ICNoteTimelineSection *)&v12 init];
  v9 = v8;
  if (v8)
  {
    [(ICNoteTimelineSection *)v8 setIdentifier:identifierCopy];
    v10 = [dsCopy copy];
    [(ICNoteTimelineSection *)v9 setObjectIDs:v10];
  }

  return v9;
}

@end
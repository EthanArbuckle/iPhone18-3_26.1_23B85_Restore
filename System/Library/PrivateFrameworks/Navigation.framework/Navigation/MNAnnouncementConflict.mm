@interface MNAnnouncementConflict
- (id)description;
@end

@implementation MNAnnouncementConflict

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  if ([(MNAnnouncementConflict *)self announcementsAreSimilar])
  {
    v4 = "similar";
  }

  else
  {
    v4 = "dissimilar";
  }

  [(MNAnnouncementConflict *)self timeGap];
  v6 = v5;
  [(MNAnnouncementConflict *)self desiredTimeGap];
  v8 = v7;
  firstEvent = [(MNAnnouncementConflict *)self firstEvent];
  event = [firstEvent event];
  secondEvent = [(MNAnnouncementConflict *)self secondEvent];
  event2 = [secondEvent event];
  v13 = [v3 stringWithFormat:@"%s announcements, time %.1f < %.1f\n  first %@\n  second %@", v4, v6, v8, event, event2];

  return v13;
}

@end
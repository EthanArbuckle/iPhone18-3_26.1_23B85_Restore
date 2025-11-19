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
  v9 = [(MNAnnouncementConflict *)self firstEvent];
  v10 = [v9 event];
  v11 = [(MNAnnouncementConflict *)self secondEvent];
  v12 = [v11 event];
  v13 = [v3 stringWithFormat:@"%s announcements, time %.1f < %.1f\n  first %@\n  second %@", v4, v6, v8, v10, v12];

  return v13;
}

@end
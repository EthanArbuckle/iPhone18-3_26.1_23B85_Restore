@interface MailIntelligencePETContactEvent
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasCallBirthday:(BOOL)birthday;
- (void)setHasCallDurEveFri:(BOOL)fri;
- (void)setHasCallDurEveSat:(BOOL)sat;
- (void)setHasCallDurEveSun:(BOOL)sun;
- (void)setHasCallDurEveWeekday:(BOOL)weekday;
- (void)setHasCallDurMorningFri:(BOOL)fri;
- (void)setHasCallDurMorningSat:(BOOL)sat;
- (void)setHasCallDurMorningSun:(BOOL)sun;
- (void)setHasCallDurMorningWeekday:(BOOL)weekday;
- (void)setHasCallDurNightFri:(BOOL)fri;
- (void)setHasCallDurNightSat:(BOOL)sat;
- (void)setHasCallDurNightSun:(BOOL)sun;
- (void)setHasCallDurNightWeekday:(BOOL)weekday;
- (void)setHasCallDurNoonFri:(BOOL)fri;
- (void)setHasCallDurNoonSat:(BOOL)sat;
- (void)setHasCallDurNoonSun:(BOOL)sun;
- (void)setHasCallDurNoonWeekday:(BOOL)weekday;
- (void)setHasCallEveFri:(BOOL)fri;
- (void)setHasCallEveSat:(BOOL)sat;
- (void)setHasCallEveSun:(BOOL)sun;
- (void)setHasCallEveWeekday:(BOOL)weekday;
- (void)setHasCallLongEveFri:(BOOL)fri;
- (void)setHasCallLongEveSat:(BOOL)sat;
- (void)setHasCallLongEveSun:(BOOL)sun;
- (void)setHasCallLongEveWeekday:(BOOL)weekday;
- (void)setHasCallLongMorningFri:(BOOL)fri;
- (void)setHasCallLongMorningSat:(BOOL)sat;
- (void)setHasCallLongMorningSun:(BOOL)sun;
- (void)setHasCallLongMorningWeekday:(BOOL)weekday;
- (void)setHasCallLongNightFri:(BOOL)fri;
- (void)setHasCallLongNightSat:(BOOL)sat;
- (void)setHasCallLongNightSun:(BOOL)sun;
- (void)setHasCallLongNightWeekday:(BOOL)weekday;
- (void)setHasCallLongNoonFri:(BOOL)fri;
- (void)setHasCallLongNoonSat:(BOOL)sat;
- (void)setHasCallLongNoonSun:(BOOL)sun;
- (void)setHasCallLongNoonWeekday:(BOOL)weekday;
- (void)setHasCallLongRatio:(BOOL)ratio;
- (void)setHasCallMaxDur:(BOOL)dur;
- (void)setHasCallMorningFri:(BOOL)fri;
- (void)setHasCallMorningSat:(BOOL)sat;
- (void)setHasCallMorningSun:(BOOL)sun;
- (void)setHasCallMorningWeekday:(BOOL)weekday;
- (void)setHasCallNightFri:(BOOL)fri;
- (void)setHasCallNightSat:(BOOL)sat;
- (void)setHasCallNightSun:(BOOL)sun;
- (void)setHasCallNightWeekday:(BOOL)weekday;
- (void)setHasCallNoonFri:(BOOL)fri;
- (void)setHasCallNoonSat:(BOOL)sat;
- (void)setHasCallNoonSun:(BOOL)sun;
- (void)setHasCallNoonWeekday:(BOOL)weekday;
- (void)setHasCallOutgoingRatio:(BOOL)ratio;
- (void)setHasCallTotal:(BOOL)total;
- (void)setHasCallTotalDur:(BOOL)dur;
- (void)setHasContactEmergency:(BOOL)emergency;
- (void)setHasContactEmergencyFamily:(BOOL)family;
- (void)setHasContactFamilyName:(BOOL)name;
- (void)setHasContactFamilyRelation:(BOOL)relation;
- (void)setHasContactFavorite:(BOOL)favorite;
- (void)setHasContactInAirDrop:(BOOL)drop;
- (void)setHasContactInAirDropAtHome:(BOOL)home;
- (void)setHasContactInFMFFavorite:(BOOL)favorite;
- (void)setHasContactInFMFFollowingMe:(BOOL)me;
- (void)setHasContactInFMFSharingWithMe:(BOOL)me;
- (void)setHasContactInHome:(BOOL)home;
- (void)setHasContactInPhotos:(BOOL)photos;
- (void)setHasContactParent:(BOOL)parent;
- (void)setHasFirstPartyMsgEveFri:(BOOL)fri;
- (void)setHasFirstPartyMsgEveSat:(BOOL)sat;
- (void)setHasFirstPartyMsgEveSun:(BOOL)sun;
- (void)setHasFirstPartyMsgEveWeekday:(BOOL)weekday;
- (void)setHasFirstPartyMsgMorningFri:(BOOL)fri;
- (void)setHasFirstPartyMsgMorningSat:(BOOL)sat;
- (void)setHasFirstPartyMsgMorningSun:(BOOL)sun;
- (void)setHasFirstPartyMsgMorningWeekday:(BOOL)weekday;
- (void)setHasFirstPartyMsgNightFri:(BOOL)fri;
- (void)setHasFirstPartyMsgNightSat:(BOOL)sat;
- (void)setHasFirstPartyMsgNightWeekday:(BOOL)weekday;
- (void)setHasFirstPartyMsgNoonFri:(BOOL)fri;
- (void)setHasFirstPartyMsgNoonSat:(BOOL)sat;
- (void)setHasFirstPartyMsgNoonSun:(BOOL)sun;
- (void)setHasFirstPartyMsgNoonWeekday:(BOOL)weekday;
- (void)setHasFirstPartyMsgOutgoingRatio:(BOOL)ratio;
- (void)setHasFirstPartyMsgTotal:(BOOL)total;
- (void)setHasThirdPartyMsgEveFri:(BOOL)fri;
- (void)setHasThirdPartyMsgEveSat:(BOOL)sat;
- (void)setHasThirdPartyMsgEveSun:(BOOL)sun;
- (void)setHasThirdPartyMsgEveWeekday:(BOOL)weekday;
- (void)setHasThirdPartyMsgMorningFri:(BOOL)fri;
- (void)setHasThirdPartyMsgMorningSat:(BOOL)sat;
- (void)setHasThirdPartyMsgMorningSun:(BOOL)sun;
- (void)setHasThirdPartyMsgMorningWeekday:(BOOL)weekday;
- (void)setHasThirdPartyMsgNightFri:(BOOL)fri;
- (void)setHasThirdPartyMsgNightSat:(BOOL)sat;
- (void)setHasThirdPartyMsgNightSun:(BOOL)sun;
- (void)setHasThirdPartyMsgNightWeekday:(BOOL)weekday;
- (void)setHasThirdPartyMsgNoonFri:(BOOL)fri;
- (void)setHasThirdPartyMsgNoonSat:(BOOL)sat;
- (void)setHasThirdPartyMsgNoonSun:(BOOL)sun;
- (void)setHasThirdPartyMsgNoonWeekday:(BOOL)weekday;
- (void)setHasThirdPartyMsgTotal:(BOOL)total;
- (void)writeTo:(id)to;
@end

@implementation MailIntelligencePETContactEvent

- (void)setHasFirstPartyMsgTotal:(BOOL)total
{
  v3 = 128;
  if (!total)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFFFFFFFFF7FLL | v3;
}

- (void)setHasFirstPartyMsgOutgoingRatio:(BOOL)ratio
{
  v3 = 64;
  if (!ratio)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFFFFFFFFFBFLL | v3;
}

- (void)setHasFirstPartyMsgMorningWeekday:(BOOL)weekday
{
  v3 = 0x2000000000000000;
  if (!weekday)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDFFFFFFFFFFFFFFFLL | v3;
}

- (void)setHasFirstPartyMsgMorningFri:(BOOL)fri
{
  v3 = 0x400000000000000;
  if (!fri)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFFFFFFFFFFFFFFLL | v3;
}

- (void)setHasFirstPartyMsgMorningSat:(BOOL)sat
{
  v3 = 0x800000000000000;
  if (!sat)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7FFFFFFFFFFFFFFLL | v3;
}

- (void)setHasFirstPartyMsgMorningSun:(BOOL)sun
{
  v3 = 0x1000000000000000;
  if (!sun)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEFFFFFFFFFFFFFFFLL | v3;
}

- (void)setHasFirstPartyMsgNoonWeekday:(BOOL)weekday
{
  v3 = 32;
  if (!weekday)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFFFFFFFFFDFLL | v3;
}

- (void)setHasFirstPartyMsgNoonFri:(BOOL)fri
{
  v3 = 4;
  if (!fri)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFFFFFFFFFFBLL | v3;
}

- (void)setHasFirstPartyMsgNoonSat:(BOOL)sat
{
  v3 = 8;
  if (!sat)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFFFFFFFFFF7 | v3;
}

- (void)setHasFirstPartyMsgNoonSun:(BOOL)sun
{
  v3 = 16;
  if (!sun)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFFFFFFFFFEFLL | v3;
}

- (void)setHasFirstPartyMsgEveWeekday:(BOOL)weekday
{
  v3 = 0x200000000000000;
  if (!weekday)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFFFFFFFFFFFFFFLL | v3;
}

- (void)setHasFirstPartyMsgEveFri:(BOOL)fri
{
  v3 = 0x40000000000000;
  if (!fri)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBFFFFFFFFFFFFFLL | v3;
}

- (void)setHasFirstPartyMsgEveSat:(BOOL)sat
{
  v3 = 0x80000000000000;
  if (!sat)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7FFFFFFFFFFFFFLL | v3;
}

- (void)setHasFirstPartyMsgEveSun:(BOOL)sun
{
  v3 = 0x100000000000000;
  if (!sun)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFFFFFFFFFFFFFFLL | v3;
}

- (void)setHasFirstPartyMsgNightWeekday:(BOOL)weekday
{
  v3 = 2;
  if (!weekday)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFFFFFFFFFFDLL | v3;
}

- (void)setHasFirstPartyMsgNightFri:(BOOL)fri
{
  v3 = 0x4000000000000000;
  if (!fri)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBFFFFFFFFFFFFFFFLL | v3;
}

- (void)setHasFirstPartyMsgNightSat:(BOOL)sat
{
  v3 = 0x8000000000000000;
  if (!sat)
  {
    v3 = 0;
  }

  *&self->_has = v3 & 0x8000000000000000 | *&self->_has & 0x7FFFFFFFFFFFFFFFLL;
}

- (void)setHasThirdPartyMsgTotal:(BOOL)total
{
  v3 = 0x1000000;
  if (!total)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFFFFEFFFFFFLL | v3;
}

- (void)setHasThirdPartyMsgMorningWeekday:(BOOL)weekday
{
  v3 = 0x8000;
  if (!weekday)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFFFFFFF7FFFLL | v3;
}

- (void)setHasThirdPartyMsgMorningFri:(BOOL)fri
{
  v3 = 4096;
  if (!fri)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFFFFFFFEFFFLL | v3;
}

- (void)setHasThirdPartyMsgMorningSat:(BOOL)sat
{
  v3 = 0x2000;
  if (!sat)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFFFFFFFDFFFLL | v3;
}

- (void)setHasThirdPartyMsgMorningSun:(BOOL)sun
{
  v3 = 0x4000;
  if (!sun)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFFFFFFFBFFFLL | v3;
}

- (void)setHasThirdPartyMsgNoonWeekday:(BOOL)weekday
{
  v3 = 0x800000;
  if (!weekday)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFFFFF7FFFFFLL | v3;
}

- (void)setHasThirdPartyMsgNoonFri:(BOOL)fri
{
  v3 = 0x100000;
  if (!fri)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFFFFFEFFFFFLL | v3;
}

- (void)setHasThirdPartyMsgNoonSat:(BOOL)sat
{
  v3 = 0x200000;
  if (!sat)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFFFFFDFFFFFLL | v3;
}

- (void)setHasThirdPartyMsgNoonSun:(BOOL)sun
{
  v3 = 0x400000;
  if (!sun)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFFFFFBFFFFFLL | v3;
}

- (void)setHasThirdPartyMsgEveWeekday:(BOOL)weekday
{
  v3 = 2048;
  if (!weekday)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFFFFFFFF7FFLL | v3;
}

- (void)setHasThirdPartyMsgEveFri:(BOOL)fri
{
  v3 = 256;
  if (!fri)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFFFFFFFFEFFLL | v3;
}

- (void)setHasThirdPartyMsgEveSat:(BOOL)sat
{
  v3 = 512;
  if (!sat)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFFFFFFFFDFFLL | v3;
}

- (void)setHasThirdPartyMsgEveSun:(BOOL)sun
{
  v3 = 1024;
  if (!sun)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFFFFFFFFBFFLL | v3;
}

- (void)setHasThirdPartyMsgNightWeekday:(BOOL)weekday
{
  v3 = 0x80000;
  if (!weekday)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFFFFFF7FFFFLL | v3;
}

- (void)setHasThirdPartyMsgNightFri:(BOOL)fri
{
  v3 = 0x10000;
  if (!fri)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFFFFFFEFFFFLL | v3;
}

- (void)setHasThirdPartyMsgNightSat:(BOOL)sat
{
  v3 = 0x20000;
  if (!sat)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFFFFFFDFFFFLL | v3;
}

- (void)setHasThirdPartyMsgNightSun:(BOOL)sun
{
  v3 = 0x40000;
  if (!sun)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFFFFFFBFFFFLL | v3;
}

- (void)setHasCallTotal:(BOOL)total
{
  v3 = 0x10000000000000;
  if (!total)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEFFFFFFFFFFFFFLL | v3;
}

- (void)setHasCallBirthday:(BOOL)birthday
{
  v3 = 0x2000000;
  if (!birthday)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFFFFDFFFFFFLL | v3;
}

- (void)setHasContactFavorite:(BOOL)favorite
{
  v3 = 0x40000000;
  if (!favorite)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFFFBFFFFFFFLL | v3;
}

- (void)setHasCallTotalDur:(BOOL)dur
{
  v3 = 0x20000000000000;
  if (!dur)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDFFFFFFFFFFFFFLL | v3;
}

- (void)setHasCallLongRatio:(BOOL)ratio
{
  v3 = 0x2000000000;
  if (!ratio)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFDFFFFFFFFFLL | v3;
}

- (void)setHasCallOutgoingRatio:(BOOL)ratio
{
  v3 = 0x8000000000000;
  if (!ratio)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7FFFFFFFFFFFFLL | v3;
}

- (void)setHasCallMaxDur:(BOOL)dur
{
  v3 = 0x4000000000;
  if (!dur)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFBFFFFFFFFFLL | v3;
}

- (void)setHasCallMorningWeekday:(BOOL)weekday
{
  v3 = 0x40000000000;
  if (!weekday)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFBFFFFFFFFFFLL | v3;
}

- (void)setHasCallMorningFri:(BOOL)fri
{
  v3 = 0x8000000000;
  if (!fri)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFF7FFFFFFFFFLL | v3;
}

- (void)setHasCallMorningSat:(BOOL)sat
{
  v3 = 0x10000000000;
  if (!sat)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFEFFFFFFFFFFLL | v3;
}

- (void)setHasCallMorningSun:(BOOL)sun
{
  v3 = 0x20000000000;
  if (!sun)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFDFFFFFFFFFFLL | v3;
}

- (void)setHasCallNoonWeekday:(BOOL)weekday
{
  v3 = 0x4000000000000;
  if (!weekday)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFBFFFFFFFFFFFFLL | v3;
}

- (void)setHasCallNoonFri:(BOOL)fri
{
  v3 = 0x800000000000;
  if (!fri)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFF7FFFFFFFFFFFLL | v3;
}

- (void)setHasCallNoonSat:(BOOL)sat
{
  v3 = 0x1000000000000;
  if (!sat)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFEFFFFFFFFFFFFLL | v3;
}

- (void)setHasCallNoonSun:(BOOL)sun
{
  v3 = 0x2000000000000;
  if (!sun)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFDFFFFFFFFFFFFLL | v3;
}

- (void)setHasCallEveWeekday:(BOOL)weekday
{
  v3 = 0x100000;
  if (!weekday)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFEFFFFFLL | v3;
}

- (void)setHasCallEveFri:(BOOL)fri
{
  v3 = 0x20000;
  if (!fri)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFDFFFFLL | v3;
}

- (void)setHasCallEveSat:(BOOL)sat
{
  v3 = 0x40000;
  if (!sat)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFBFFFFLL | v3;
}

- (void)setHasCallEveSun:(BOOL)sun
{
  v3 = 0x80000;
  if (!sun)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFF7FFFFLL | v3;
}

- (void)setHasCallNightWeekday:(BOOL)weekday
{
  v3 = 0x400000000000;
  if (!weekday)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFBFFFFFFFFFFFLL | v3;
}

- (void)setHasCallNightFri:(BOOL)fri
{
  v3 = 0x80000000000;
  if (!fri)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFF7FFFFFFFFFFLL | v3;
}

- (void)setHasCallNightSat:(BOOL)sat
{
  v3 = 0x100000000000;
  if (!sat)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFEFFFFFFFFFFFLL | v3;
}

- (void)setHasCallNightSun:(BOOL)sun
{
  v3 = 0x200000000000;
  if (!sun)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFDFFFFFFFFFFFLL | v3;
}

- (void)setHasCallDurMorningWeekday:(BOOL)weekday
{
  v3 = 256;
  if (!weekday)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFFEFFLL | v3;
}

- (void)setHasCallDurMorningFri:(BOOL)fri
{
  v3 = 32;
  if (!fri)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFFFDFLL | v3;
}

- (void)setHasCallDurMorningSat:(BOOL)sat
{
  v3 = 64;
  if (!sat)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFFFBFLL | v3;
}

- (void)setHasCallDurMorningSun:(BOOL)sun
{
  v3 = 128;
  if (!sun)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFFF7FLL | v3;
}

- (void)setHasCallDurNoonWeekday:(BOOL)weekday
{
  v3 = 0x10000;
  if (!weekday)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFEFFFFLL | v3;
}

- (void)setHasCallDurNoonFri:(BOOL)fri
{
  v3 = 0x2000;
  if (!fri)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFDFFFLL | v3;
}

- (void)setHasCallDurNoonSat:(BOOL)sat
{
  v3 = 0x4000;
  if (!sat)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFBFFFLL | v3;
}

- (void)setHasCallDurNoonSun:(BOOL)sun
{
  v3 = 0x8000;
  if (!sun)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFF7FFFLL | v3;
}

- (void)setHasCallDurEveWeekday:(BOOL)weekday
{
  v3 = 16;
  if (!weekday)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFFFEFLL | v3;
}

- (void)setHasCallDurEveFri:(BOOL)fri
{
  v3 = 2;
  if (!fri)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFFFFDLL | v3;
}

- (void)setHasCallDurEveSat:(BOOL)sat
{
  v3 = 4;
  if (!sat)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFFFFBLL | v3;
}

- (void)setHasCallDurEveSun:(BOOL)sun
{
  v3 = 8;
  if (!sun)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFFFF7 | v3;
}

- (void)setHasCallDurNightWeekday:(BOOL)weekday
{
  v3 = 4096;
  if (!weekday)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFEFFFLL | v3;
}

- (void)setHasCallDurNightFri:(BOOL)fri
{
  v3 = 512;
  if (!fri)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFFDFFLL | v3;
}

- (void)setHasCallDurNightSat:(BOOL)sat
{
  v3 = 1024;
  if (!sat)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFFBFFLL | v3;
}

- (void)setHasCallDurNightSun:(BOOL)sun
{
  v3 = 2048;
  if (!sun)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFF7FFLL | v3;
}

- (void)setHasCallLongMorningWeekday:(BOOL)weekday
{
  v3 = 0x10000000;
  if (!weekday)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFEFFFFFFFLL | v3;
}

- (void)setHasCallLongMorningFri:(BOOL)fri
{
  v3 = 0x2000000;
  if (!fri)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFDFFFFFFLL | v3;
}

- (void)setHasCallLongMorningSat:(BOOL)sat
{
  v3 = 0x4000000;
  if (!sat)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFBFFFFFFLL | v3;
}

- (void)setHasCallLongMorningSun:(BOOL)sun
{
  v3 = 0x8000000;
  if (!sun)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFF7FFFFFFLL | v3;
}

- (void)setHasCallLongNoonWeekday:(BOOL)weekday
{
  v3 = 0x1000000000;
  if (!weekday)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFEFFFFFFFFFLL | v3;
}

- (void)setHasCallLongNoonFri:(BOOL)fri
{
  v3 = 0x200000000;
  if (!fri)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFDFFFFFFFFLL | v3;
}

- (void)setHasCallLongNoonSat:(BOOL)sat
{
  v3 = 0x400000000;
  if (!sat)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFBFFFFFFFFLL | v3;
}

- (void)setHasCallLongNoonSun:(BOOL)sun
{
  v3 = 0x800000000;
  if (!sun)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFF7FFFFFFFFLL | v3;
}

- (void)setHasCallLongEveWeekday:(BOOL)weekday
{
  v3 = 0x1000000;
  if (!weekday)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFEFFFFFFLL | v3;
}

- (void)setHasCallLongEveFri:(BOOL)fri
{
  v3 = 0x200000;
  if (!fri)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFDFFFFFLL | v3;
}

- (void)setHasCallLongEveSat:(BOOL)sat
{
  v3 = 0x400000;
  if (!sat)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFBFFFFFLL | v3;
}

- (void)setHasCallLongEveSun:(BOOL)sun
{
  v3 = 0x800000;
  if (!sun)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFF7FFFFFLL | v3;
}

- (void)setHasCallLongNightWeekday:(BOOL)weekday
{
  v3 = 0x100000000;
  if (!weekday)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFEFFFFFFFFLL | v3;
}

- (void)setHasCallLongNightFri:(BOOL)fri
{
  v3 = 0x20000000;
  if (!fri)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFDFFFFFFFLL | v3;
}

- (void)setHasCallLongNightSat:(BOOL)sat
{
  v3 = 0x40000000;
  if (!sat)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFBFFFFFFFLL | v3;
}

- (void)setHasCallLongNightSun:(BOOL)sun
{
  v3 = 0x80000000;
  if (!sun)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFF7FFFFFFFLL | v3;
}

- (void)setHasContactFamilyRelation:(BOOL)relation
{
  v3 = 0x20000000;
  if (!relation)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFFFDFFFFFFFLL | v3;
}

- (void)setHasContactFamilyName:(BOOL)name
{
  v3 = 0x10000000;
  if (!name)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFFFEFFFFFFFLL | v3;
}

- (void)setHasContactParent:(BOOL)parent
{
  v3 = 0x4000000000;
  if (!parent)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFBFFFFFFFFFLL | v3;
}

- (void)setHasContactEmergency:(BOOL)emergency
{
  v3 = 0x4000000;
  if (!emergency)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFFFFBFFFFFFLL | v3;
}

- (void)setHasContactEmergencyFamily:(BOOL)family
{
  v3 = 0x8000000;
  if (!family)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFFFF7FFFFFFLL | v3;
}

- (void)setHasContactInHome:(BOOL)home
{
  v3 = 0x1000000000;
  if (!home)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFEFFFFFFFFFLL | v3;
}

- (void)setHasContactInPhotos:(BOOL)photos
{
  v3 = 0x2000000000;
  if (!photos)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFDFFFFFFFFFLL | v3;
}

- (void)setHasContactInAirDrop:(BOOL)drop
{
  v3 = 0x80000000;
  if (!drop)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFFF7FFFFFFFLL | v3;
}

- (void)setHasContactInAirDropAtHome:(BOOL)home
{
  v3 = 0x100000000;
  if (!home)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFFEFFFFFFFFLL | v3;
}

- (void)setHasContactInFMFFollowingMe:(BOOL)me
{
  v3 = 0x400000000;
  if (!me)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFFBFFFFFFFFLL | v3;
}

- (void)setHasContactInFMFSharingWithMe:(BOOL)me
{
  v3 = 0x800000000;
  if (!me)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFF7FFFFFFFFLL | v3;
}

- (void)setHasContactInFMFFavorite:(BOOL)favorite
{
  v3 = 0x200000000;
  if (!favorite)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFFDFFFFFFFFLL | v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = MailIntelligencePETContactEvent;
  v4 = [(MailIntelligencePETContactEvent *)&v8 description];
  dictionaryRepresentation = [(MailIntelligencePETContactEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  p_has = &self->_has;
  v5 = *(&self->_has + 1);
  if ((v5 & 0x80) != 0)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_firstPartyMsgTotal];
    [dictionary setObject:v6 forKey:@"firstPartyMsgTotal"];

    v5 = *(&self->_has + 1);
  }

  if ((v5 & 0x40) != 0)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithDouble:self->_firstPartyMsgOutgoingRatio];
    [dictionary setObject:v7 forKey:@"firstPartyMsgOutgoingRatio"];
  }

  v8 = *p_has;
  if ((*p_has & 0x2000000000000000) != 0)
  {
    v33 = [MEMORY[0x1E696AD98] numberWithDouble:self->_firstPartyMsgMorningWeekday];
    [dictionary setObject:v33 forKey:@"firstPartyMsgMorningWeekday"];

    v8 = *p_has;
    if ((*p_has & 0x400000000000000) == 0)
    {
LABEL_7:
      if ((v8 & 0x800000000000000) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_124;
    }
  }

  else if ((v8 & 0x400000000000000) == 0)
  {
    goto LABEL_7;
  }

  v34 = [MEMORY[0x1E696AD98] numberWithDouble:self->_firstPartyMsgMorningFri];
  [dictionary setObject:v34 forKey:@"firstPartyMsgMorningFri"];

  v8 = *p_has;
  if ((*p_has & 0x800000000000000) == 0)
  {
LABEL_8:
    if ((v8 & 0x1000000000000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_124:
  v35 = [MEMORY[0x1E696AD98] numberWithDouble:self->_firstPartyMsgMorningSat];
  [dictionary setObject:v35 forKey:@"firstPartyMsgMorningSat"];

  if ((*p_has & 0x1000000000000000) != 0)
  {
LABEL_9:
    v9 = [MEMORY[0x1E696AD98] numberWithDouble:self->_firstPartyMsgMorningSun];
    [dictionary setObject:v9 forKey:@"firstPartyMsgMorningSun"];
  }

LABEL_10:
  v10 = *(&self->_has + 1);
  if ((v10 & 0x20) != 0)
  {
    v36 = [MEMORY[0x1E696AD98] numberWithDouble:self->_firstPartyMsgNoonWeekday];
    [dictionary setObject:v36 forKey:@"firstPartyMsgNoonWeekday"];

    v10 = *(&self->_has + 1);
    if ((v10 & 4) == 0)
    {
LABEL_12:
      if ((v10 & 8) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_128;
    }
  }

  else if ((v10 & 4) == 0)
  {
    goto LABEL_12;
  }

  v37 = [MEMORY[0x1E696AD98] numberWithDouble:self->_firstPartyMsgNoonFri];
  [dictionary setObject:v37 forKey:@"firstPartyMsgNoonFri"];

  v10 = *(&self->_has + 1);
  if ((v10 & 8) == 0)
  {
LABEL_13:
    if ((v10 & 0x10) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_128:
  v38 = [MEMORY[0x1E696AD98] numberWithDouble:self->_firstPartyMsgNoonSat];
  [dictionary setObject:v38 forKey:@"firstPartyMsgNoonSat"];

  if ((*(&self->_has + 1) & 0x10) != 0)
  {
LABEL_14:
    v11 = [MEMORY[0x1E696AD98] numberWithDouble:self->_firstPartyMsgNoonSun];
    [dictionary setObject:v11 forKey:@"firstPartyMsgNoonSun"];
  }

LABEL_15:
  v12 = *p_has;
  if ((*p_has & 0x200000000000000) != 0)
  {
    v39 = [MEMORY[0x1E696AD98] numberWithDouble:self->_firstPartyMsgEveWeekday];
    [dictionary setObject:v39 forKey:@"firstPartyMsgEveWeekday"];

    v12 = *p_has;
    if ((*p_has & 0x40000000000000) == 0)
    {
LABEL_17:
      if ((v12 & 0x80000000000000) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_132;
    }
  }

  else if ((v12 & 0x40000000000000) == 0)
  {
    goto LABEL_17;
  }

  v40 = [MEMORY[0x1E696AD98] numberWithDouble:self->_firstPartyMsgEveFri];
  [dictionary setObject:v40 forKey:@"firstPartyMsgEveFri"];

  v12 = *p_has;
  if ((*p_has & 0x80000000000000) == 0)
  {
LABEL_18:
    if ((v12 & 0x100000000000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_132:
  v41 = [MEMORY[0x1E696AD98] numberWithDouble:self->_firstPartyMsgEveSat];
  [dictionary setObject:v41 forKey:@"firstPartyMsgEveSat"];

  if ((*p_has & 0x100000000000000) != 0)
  {
LABEL_19:
    v13 = [MEMORY[0x1E696AD98] numberWithDouble:self->_firstPartyMsgEveSun];
    [dictionary setObject:v13 forKey:@"firstPartyMsgEveSun"];
  }

LABEL_20:
  if ((*(&self->_has + 8) & 2) != 0)
  {
    v14 = [MEMORY[0x1E696AD98] numberWithDouble:self->_firstPartyMsgNightWeekday];
    [dictionary setObject:v14 forKey:@"firstPartyMsgNightWeekday"];
  }

  v15 = *p_has;
  if ((*p_has & 0x4000000000000000) != 0)
  {
    v16 = [MEMORY[0x1E696AD98] numberWithDouble:self->_firstPartyMsgNightFri];
    [dictionary setObject:v16 forKey:@"firstPartyMsgNightFri"];

    v15 = *p_has;
  }

  if (v15 < 0)
  {
    v17 = [MEMORY[0x1E696AD98] numberWithDouble:self->_firstPartyMsgNightSat];
    [dictionary setObject:v17 forKey:@"firstPartyMsgNightSat"];
  }

  v18 = *(&self->_has + 1);
  if (v18)
  {
    v42 = [MEMORY[0x1E696AD98] numberWithDouble:self->_firstPartyMsgNightSun];
    [dictionary setObject:v42 forKey:@"firstPartyMsgNightSun"];

    v18 = *(&self->_has + 1);
    if ((v18 & 0x1000000) == 0)
    {
LABEL_28:
      if ((v18 & 0x8000) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_136;
    }
  }

  else if ((v18 & 0x1000000) == 0)
  {
    goto LABEL_28;
  }

  v43 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_thirdPartyMsgTotal];
  [dictionary setObject:v43 forKey:@"thirdPartyMsgTotal"];

  v18 = *(&self->_has + 1);
  if ((v18 & 0x8000) == 0)
  {
LABEL_29:
    if ((v18 & 0x1000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_137;
  }

LABEL_136:
  v44 = [MEMORY[0x1E696AD98] numberWithDouble:self->_thirdPartyMsgMorningWeekday];
  [dictionary setObject:v44 forKey:@"thirdPartyMsgMorningWeekday"];

  v18 = *(&self->_has + 1);
  if ((v18 & 0x1000) == 0)
  {
LABEL_30:
    if ((v18 & 0x2000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_138;
  }

LABEL_137:
  v45 = [MEMORY[0x1E696AD98] numberWithDouble:self->_thirdPartyMsgMorningFri];
  [dictionary setObject:v45 forKey:@"thirdPartyMsgMorningFri"];

  v18 = *(&self->_has + 1);
  if ((v18 & 0x2000) == 0)
  {
LABEL_31:
    if ((v18 & 0x4000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_139;
  }

LABEL_138:
  v46 = [MEMORY[0x1E696AD98] numberWithDouble:self->_thirdPartyMsgMorningSat];
  [dictionary setObject:v46 forKey:@"thirdPartyMsgMorningSat"];

  v18 = *(&self->_has + 1);
  if ((v18 & 0x4000) == 0)
  {
LABEL_32:
    if ((v18 & 0x800000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_140;
  }

LABEL_139:
  v47 = [MEMORY[0x1E696AD98] numberWithDouble:self->_thirdPartyMsgMorningSun];
  [dictionary setObject:v47 forKey:@"thirdPartyMsgMorningSun"];

  v18 = *(&self->_has + 1);
  if ((v18 & 0x800000) == 0)
  {
LABEL_33:
    if ((v18 & 0x100000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_141;
  }

LABEL_140:
  v48 = [MEMORY[0x1E696AD98] numberWithDouble:self->_thirdPartyMsgNoonWeekday];
  [dictionary setObject:v48 forKey:@"thirdPartyMsgNoonWeekday"];

  v18 = *(&self->_has + 1);
  if ((v18 & 0x100000) == 0)
  {
LABEL_34:
    if ((v18 & 0x200000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_142;
  }

LABEL_141:
  v49 = [MEMORY[0x1E696AD98] numberWithDouble:self->_thirdPartyMsgNoonFri];
  [dictionary setObject:v49 forKey:@"thirdPartyMsgNoonFri"];

  v18 = *(&self->_has + 1);
  if ((v18 & 0x200000) == 0)
  {
LABEL_35:
    if ((v18 & 0x400000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_143;
  }

LABEL_142:
  v50 = [MEMORY[0x1E696AD98] numberWithDouble:self->_thirdPartyMsgNoonSat];
  [dictionary setObject:v50 forKey:@"thirdPartyMsgNoonSat"];

  v18 = *(&self->_has + 1);
  if ((v18 & 0x400000) == 0)
  {
LABEL_36:
    if ((v18 & 0x800) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_144;
  }

LABEL_143:
  v51 = [MEMORY[0x1E696AD98] numberWithDouble:self->_thirdPartyMsgNoonSun];
  [dictionary setObject:v51 forKey:@"thirdPartyMsgNoonSun"];

  v18 = *(&self->_has + 1);
  if ((v18 & 0x800) == 0)
  {
LABEL_37:
    if ((v18 & 0x100) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_145;
  }

LABEL_144:
  v52 = [MEMORY[0x1E696AD98] numberWithDouble:self->_thirdPartyMsgEveWeekday];
  [dictionary setObject:v52 forKey:@"thirdPartyMsgEveWeekday"];

  v18 = *(&self->_has + 1);
  if ((v18 & 0x100) == 0)
  {
LABEL_38:
    if ((v18 & 0x200) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_146;
  }

LABEL_145:
  v53 = [MEMORY[0x1E696AD98] numberWithDouble:self->_thirdPartyMsgEveFri];
  [dictionary setObject:v53 forKey:@"thirdPartyMsgEveFri"];

  v18 = *(&self->_has + 1);
  if ((v18 & 0x200) == 0)
  {
LABEL_39:
    if ((v18 & 0x400) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_147;
  }

LABEL_146:
  v54 = [MEMORY[0x1E696AD98] numberWithDouble:self->_thirdPartyMsgEveSat];
  [dictionary setObject:v54 forKey:@"thirdPartyMsgEveSat"];

  v18 = *(&self->_has + 1);
  if ((v18 & 0x400) == 0)
  {
LABEL_40:
    if ((v18 & 0x80000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_148;
  }

LABEL_147:
  v55 = [MEMORY[0x1E696AD98] numberWithDouble:self->_thirdPartyMsgEveSun];
  [dictionary setObject:v55 forKey:@"thirdPartyMsgEveSun"];

  v18 = *(&self->_has + 1);
  if ((v18 & 0x80000) == 0)
  {
LABEL_41:
    if ((v18 & 0x10000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_149;
  }

LABEL_148:
  v56 = [MEMORY[0x1E696AD98] numberWithDouble:self->_thirdPartyMsgNightWeekday];
  [dictionary setObject:v56 forKey:@"thirdPartyMsgNightWeekday"];

  v18 = *(&self->_has + 1);
  if ((v18 & 0x10000) == 0)
  {
LABEL_42:
    if ((v18 & 0x20000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_150;
  }

LABEL_149:
  v57 = [MEMORY[0x1E696AD98] numberWithDouble:self->_thirdPartyMsgNightFri];
  [dictionary setObject:v57 forKey:@"thirdPartyMsgNightFri"];

  v18 = *(&self->_has + 1);
  if ((v18 & 0x20000) == 0)
  {
LABEL_43:
    if ((v18 & 0x40000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

LABEL_150:
  v58 = [MEMORY[0x1E696AD98] numberWithDouble:self->_thirdPartyMsgNightSat];
  [dictionary setObject:v58 forKey:@"thirdPartyMsgNightSat"];

  if ((*(&self->_has + 1) & 0x40000) != 0)
  {
LABEL_44:
    v19 = [MEMORY[0x1E696AD98] numberWithDouble:self->_thirdPartyMsgNightSun];
    [dictionary setObject:v19 forKey:@"thirdPartyMsgNightSun"];
  }

LABEL_45:
  if ((*(&self->_has + 6) & 0x10) != 0)
  {
    v20 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_callTotal];
    [dictionary setObject:v20 forKey:@"callTotal"];
  }

  v21 = *(&self->_has + 1);
  if ((v21 & 0x2000000) != 0)
  {
    v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_callBirthday];
    [dictionary setObject:v22 forKey:@"callBirthday"];

    v21 = *(&self->_has + 1);
  }

  if ((v21 & 0x40000000) != 0)
  {
    v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_contactFavorite];
    [dictionary setObject:v23 forKey:@"contactFavorite"];
  }

  v24 = *p_has;
  if ((*p_has & 0x20000000000000) != 0)
  {
    v59 = [MEMORY[0x1E696AD98] numberWithDouble:self->_callTotalDur];
    [dictionary setObject:v59 forKey:@"callTotalDur"];

    v24 = *p_has;
    if ((*p_has & 0x2000000000) == 0)
    {
LABEL_53:
      if ((v24 & 0x8000000000000) == 0)
      {
        goto LABEL_54;
      }

      goto LABEL_154;
    }
  }

  else if ((v24 & 0x2000000000) == 0)
  {
    goto LABEL_53;
  }

  v60 = [MEMORY[0x1E696AD98] numberWithDouble:self->_callLongRatio];
  [dictionary setObject:v60 forKey:@"callLongRatio"];

  v24 = *p_has;
  if ((*p_has & 0x8000000000000) == 0)
  {
LABEL_54:
    if ((v24 & 1) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_155;
  }

LABEL_154:
  v61 = [MEMORY[0x1E696AD98] numberWithDouble:self->_callOutgoingRatio];
  [dictionary setObject:v61 forKey:@"callOutgoingRatio"];

  v24 = *p_has;
  if ((*p_has & 1) == 0)
  {
LABEL_55:
    if ((v24 & 0x4000000000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_156;
  }

LABEL_155:
  v62 = [MEMORY[0x1E696AD98] numberWithDouble:self->_callAvgDur];
  [dictionary setObject:v62 forKey:@"callAvgDur"];

  v24 = *p_has;
  if ((*p_has & 0x4000000000) == 0)
  {
LABEL_56:
    if ((v24 & 0x40000000000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_157;
  }

LABEL_156:
  v63 = [MEMORY[0x1E696AD98] numberWithDouble:self->_callMaxDur];
  [dictionary setObject:v63 forKey:@"callMaxDur"];

  v24 = *p_has;
  if ((*p_has & 0x40000000000) == 0)
  {
LABEL_57:
    if ((v24 & 0x8000000000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_158;
  }

LABEL_157:
  v64 = [MEMORY[0x1E696AD98] numberWithDouble:self->_callMorningWeekday];
  [dictionary setObject:v64 forKey:@"callMorningWeekday"];

  v24 = *p_has;
  if ((*p_has & 0x8000000000) == 0)
  {
LABEL_58:
    if ((v24 & 0x10000000000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_159;
  }

LABEL_158:
  v65 = [MEMORY[0x1E696AD98] numberWithDouble:self->_callMorningFri];
  [dictionary setObject:v65 forKey:@"callMorningFri"];

  v24 = *p_has;
  if ((*p_has & 0x10000000000) == 0)
  {
LABEL_59:
    if ((v24 & 0x20000000000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_160;
  }

LABEL_159:
  v66 = [MEMORY[0x1E696AD98] numberWithDouble:self->_callMorningSat];
  [dictionary setObject:v66 forKey:@"callMorningSat"];

  v24 = *p_has;
  if ((*p_has & 0x20000000000) == 0)
  {
LABEL_60:
    if ((v24 & 0x4000000000000) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_161;
  }

LABEL_160:
  v67 = [MEMORY[0x1E696AD98] numberWithDouble:self->_callMorningSun];
  [dictionary setObject:v67 forKey:@"callMorningSun"];

  v24 = *p_has;
  if ((*p_has & 0x4000000000000) == 0)
  {
LABEL_61:
    if ((v24 & 0x800000000000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_162;
  }

LABEL_161:
  v68 = [MEMORY[0x1E696AD98] numberWithDouble:self->_callNoonWeekday];
  [dictionary setObject:v68 forKey:@"callNoonWeekday"];

  v24 = *p_has;
  if ((*p_has & 0x800000000000) == 0)
  {
LABEL_62:
    if ((v24 & 0x1000000000000) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_163;
  }

LABEL_162:
  v69 = [MEMORY[0x1E696AD98] numberWithDouble:self->_callNoonFri];
  [dictionary setObject:v69 forKey:@"callNoonFri"];

  v24 = *p_has;
  if ((*p_has & 0x1000000000000) == 0)
  {
LABEL_63:
    if ((v24 & 0x2000000000000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_164;
  }

LABEL_163:
  v70 = [MEMORY[0x1E696AD98] numberWithDouble:self->_callNoonSat];
  [dictionary setObject:v70 forKey:@"callNoonSat"];

  v24 = *p_has;
  if ((*p_has & 0x2000000000000) == 0)
  {
LABEL_64:
    if ((v24 & 0x100000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_165;
  }

LABEL_164:
  v71 = [MEMORY[0x1E696AD98] numberWithDouble:self->_callNoonSun];
  [dictionary setObject:v71 forKey:@"callNoonSun"];

  v24 = *p_has;
  if ((*p_has & 0x100000) == 0)
  {
LABEL_65:
    if ((v24 & 0x20000) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_166;
  }

LABEL_165:
  v72 = [MEMORY[0x1E696AD98] numberWithDouble:self->_callEveWeekday];
  [dictionary setObject:v72 forKey:@"callEveWeekday"];

  v24 = *p_has;
  if ((*p_has & 0x20000) == 0)
  {
LABEL_66:
    if ((v24 & 0x40000) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_167;
  }

LABEL_166:
  v73 = [MEMORY[0x1E696AD98] numberWithDouble:self->_callEveFri];
  [dictionary setObject:v73 forKey:@"callEveFri"];

  v24 = *p_has;
  if ((*p_has & 0x40000) == 0)
  {
LABEL_67:
    if ((v24 & 0x80000) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_168;
  }

LABEL_167:
  v74 = [MEMORY[0x1E696AD98] numberWithDouble:self->_callEveSat];
  [dictionary setObject:v74 forKey:@"callEveSat"];

  v24 = *p_has;
  if ((*p_has & 0x80000) == 0)
  {
LABEL_68:
    if ((v24 & 0x400000000000) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_169;
  }

LABEL_168:
  v75 = [MEMORY[0x1E696AD98] numberWithDouble:self->_callEveSun];
  [dictionary setObject:v75 forKey:@"callEveSun"];

  v24 = *p_has;
  if ((*p_has & 0x400000000000) == 0)
  {
LABEL_69:
    if ((v24 & 0x80000000000) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_170;
  }

LABEL_169:
  v76 = [MEMORY[0x1E696AD98] numberWithDouble:self->_callNightWeekday];
  [dictionary setObject:v76 forKey:@"callNightWeekday"];

  v24 = *p_has;
  if ((*p_has & 0x80000000000) == 0)
  {
LABEL_70:
    if ((v24 & 0x100000000000) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_171;
  }

LABEL_170:
  v77 = [MEMORY[0x1E696AD98] numberWithDouble:self->_callNightFri];
  [dictionary setObject:v77 forKey:@"callNightFri"];

  v24 = *p_has;
  if ((*p_has & 0x100000000000) == 0)
  {
LABEL_71:
    if ((v24 & 0x200000000000) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_172;
  }

LABEL_171:
  v78 = [MEMORY[0x1E696AD98] numberWithDouble:self->_callNightSat];
  [dictionary setObject:v78 forKey:@"callNightSat"];

  v24 = *p_has;
  if ((*p_has & 0x200000000000) == 0)
  {
LABEL_72:
    if ((v24 & 0x100) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_173;
  }

LABEL_172:
  v79 = [MEMORY[0x1E696AD98] numberWithDouble:self->_callNightSun];
  [dictionary setObject:v79 forKey:@"callNightSun"];

  v24 = *p_has;
  if ((*p_has & 0x100) == 0)
  {
LABEL_73:
    if ((v24 & 0x20) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_174;
  }

LABEL_173:
  v80 = [MEMORY[0x1E696AD98] numberWithDouble:self->_callDurMorningWeekday];
  [dictionary setObject:v80 forKey:@"callDurMorningWeekday"];

  v24 = *p_has;
  if ((*p_has & 0x20) == 0)
  {
LABEL_74:
    if ((v24 & 0x40) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_175;
  }

LABEL_174:
  v81 = [MEMORY[0x1E696AD98] numberWithDouble:self->_callDurMorningFri];
  [dictionary setObject:v81 forKey:@"callDurMorningFri"];

  v24 = *p_has;
  if ((*p_has & 0x40) == 0)
  {
LABEL_75:
    if ((v24 & 0x80) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_176;
  }

LABEL_175:
  v82 = [MEMORY[0x1E696AD98] numberWithDouble:self->_callDurMorningSat];
  [dictionary setObject:v82 forKey:@"callDurMorningSat"];

  v24 = *p_has;
  if ((*p_has & 0x80) == 0)
  {
LABEL_76:
    if ((v24 & 0x10000) == 0)
    {
      goto LABEL_77;
    }

    goto LABEL_177;
  }

LABEL_176:
  v83 = [MEMORY[0x1E696AD98] numberWithDouble:self->_callDurMorningSun];
  [dictionary setObject:v83 forKey:@"callDurMorningSun"];

  v24 = *p_has;
  if ((*p_has & 0x10000) == 0)
  {
LABEL_77:
    if ((v24 & 0x2000) == 0)
    {
      goto LABEL_78;
    }

    goto LABEL_178;
  }

LABEL_177:
  v84 = [MEMORY[0x1E696AD98] numberWithDouble:self->_callDurNoonWeekday];
  [dictionary setObject:v84 forKey:@"callDurNoonWeekday"];

  v24 = *p_has;
  if ((*p_has & 0x2000) == 0)
  {
LABEL_78:
    if ((v24 & 0x4000) == 0)
    {
      goto LABEL_79;
    }

    goto LABEL_179;
  }

LABEL_178:
  v85 = [MEMORY[0x1E696AD98] numberWithDouble:self->_callDurNoonFri];
  [dictionary setObject:v85 forKey:@"callDurNoonFri"];

  v24 = *p_has;
  if ((*p_has & 0x4000) == 0)
  {
LABEL_79:
    if ((v24 & 0x8000) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_180;
  }

LABEL_179:
  v86 = [MEMORY[0x1E696AD98] numberWithDouble:self->_callDurNoonSat];
  [dictionary setObject:v86 forKey:@"callDurNoonSat"];

  v24 = *p_has;
  if ((*p_has & 0x8000) == 0)
  {
LABEL_80:
    if ((v24 & 0x10) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_181;
  }

LABEL_180:
  v87 = [MEMORY[0x1E696AD98] numberWithDouble:self->_callDurNoonSun];
  [dictionary setObject:v87 forKey:@"callDurNoonSun"];

  v24 = *p_has;
  if ((*p_has & 0x10) == 0)
  {
LABEL_81:
    if ((v24 & 2) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_182;
  }

LABEL_181:
  v88 = [MEMORY[0x1E696AD98] numberWithDouble:self->_callDurEveWeekday];
  [dictionary setObject:v88 forKey:@"callDurEveWeekday"];

  v24 = *p_has;
  if ((*p_has & 2) == 0)
  {
LABEL_82:
    if ((v24 & 4) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_183;
  }

LABEL_182:
  v89 = [MEMORY[0x1E696AD98] numberWithDouble:self->_callDurEveFri];
  [dictionary setObject:v89 forKey:@"callDurEveFri"];

  v24 = *p_has;
  if ((*p_has & 4) == 0)
  {
LABEL_83:
    if ((v24 & 8) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_184;
  }

LABEL_183:
  v90 = [MEMORY[0x1E696AD98] numberWithDouble:self->_callDurEveSat];
  [dictionary setObject:v90 forKey:@"callDurEveSat"];

  v24 = *p_has;
  if ((*p_has & 8) == 0)
  {
LABEL_84:
    if ((v24 & 0x1000) == 0)
    {
      goto LABEL_85;
    }

    goto LABEL_185;
  }

LABEL_184:
  v91 = [MEMORY[0x1E696AD98] numberWithDouble:self->_callDurEveSun];
  [dictionary setObject:v91 forKey:@"callDurEveSun"];

  v24 = *p_has;
  if ((*p_has & 0x1000) == 0)
  {
LABEL_85:
    if ((v24 & 0x200) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_186;
  }

LABEL_185:
  v92 = [MEMORY[0x1E696AD98] numberWithDouble:self->_callDurNightWeekday];
  [dictionary setObject:v92 forKey:@"callDurNightWeekday"];

  v24 = *p_has;
  if ((*p_has & 0x200) == 0)
  {
LABEL_86:
    if ((v24 & 0x400) == 0)
    {
      goto LABEL_87;
    }

    goto LABEL_187;
  }

LABEL_186:
  v93 = [MEMORY[0x1E696AD98] numberWithDouble:self->_callDurNightFri];
  [dictionary setObject:v93 forKey:@"callDurNightFri"];

  v24 = *p_has;
  if ((*p_has & 0x400) == 0)
  {
LABEL_87:
    if ((v24 & 0x800) == 0)
    {
      goto LABEL_88;
    }

    goto LABEL_188;
  }

LABEL_187:
  v94 = [MEMORY[0x1E696AD98] numberWithDouble:self->_callDurNightSat];
  [dictionary setObject:v94 forKey:@"callDurNightSat"];

  v24 = *p_has;
  if ((*p_has & 0x800) == 0)
  {
LABEL_88:
    if ((v24 & 0x10000000) == 0)
    {
      goto LABEL_89;
    }

    goto LABEL_189;
  }

LABEL_188:
  v95 = [MEMORY[0x1E696AD98] numberWithDouble:self->_callDurNightSun];
  [dictionary setObject:v95 forKey:@"callDurNightSun"];

  v24 = *p_has;
  if ((*p_has & 0x10000000) == 0)
  {
LABEL_89:
    if ((v24 & 0x2000000) == 0)
    {
      goto LABEL_90;
    }

    goto LABEL_190;
  }

LABEL_189:
  v96 = [MEMORY[0x1E696AD98] numberWithDouble:self->_callLongMorningWeekday];
  [dictionary setObject:v96 forKey:@"callLongMorningWeekday"];

  v24 = *p_has;
  if ((*p_has & 0x2000000) == 0)
  {
LABEL_90:
    if ((v24 & 0x4000000) == 0)
    {
      goto LABEL_91;
    }

    goto LABEL_191;
  }

LABEL_190:
  v97 = [MEMORY[0x1E696AD98] numberWithDouble:self->_callLongMorningFri];
  [dictionary setObject:v97 forKey:@"callLongMorningFri"];

  v24 = *p_has;
  if ((*p_has & 0x4000000) == 0)
  {
LABEL_91:
    if ((v24 & 0x8000000) == 0)
    {
      goto LABEL_92;
    }

    goto LABEL_192;
  }

LABEL_191:
  v98 = [MEMORY[0x1E696AD98] numberWithDouble:self->_callLongMorningSat];
  [dictionary setObject:v98 forKey:@"callLongMorningSat"];

  v24 = *p_has;
  if ((*p_has & 0x8000000) == 0)
  {
LABEL_92:
    if ((v24 & 0x1000000000) == 0)
    {
      goto LABEL_93;
    }

    goto LABEL_193;
  }

LABEL_192:
  v99 = [MEMORY[0x1E696AD98] numberWithDouble:self->_callLongMorningSun];
  [dictionary setObject:v99 forKey:@"callLongMorningSun"];

  v24 = *p_has;
  if ((*p_has & 0x1000000000) == 0)
  {
LABEL_93:
    if ((v24 & 0x200000000) == 0)
    {
      goto LABEL_94;
    }

    goto LABEL_194;
  }

LABEL_193:
  v100 = [MEMORY[0x1E696AD98] numberWithDouble:self->_callLongNoonWeekday];
  [dictionary setObject:v100 forKey:@"callLongNoonWeekday"];

  v24 = *p_has;
  if ((*p_has & 0x200000000) == 0)
  {
LABEL_94:
    if ((v24 & 0x400000000) == 0)
    {
      goto LABEL_95;
    }

    goto LABEL_195;
  }

LABEL_194:
  v101 = [MEMORY[0x1E696AD98] numberWithDouble:self->_callLongNoonFri];
  [dictionary setObject:v101 forKey:@"callLongNoonFri"];

  v24 = *p_has;
  if ((*p_has & 0x400000000) == 0)
  {
LABEL_95:
    if ((v24 & 0x800000000) == 0)
    {
      goto LABEL_96;
    }

    goto LABEL_196;
  }

LABEL_195:
  v102 = [MEMORY[0x1E696AD98] numberWithDouble:self->_callLongNoonSat];
  [dictionary setObject:v102 forKey:@"callLongNoonSat"];

  v24 = *p_has;
  if ((*p_has & 0x800000000) == 0)
  {
LABEL_96:
    if ((v24 & 0x1000000) == 0)
    {
      goto LABEL_97;
    }

    goto LABEL_197;
  }

LABEL_196:
  v103 = [MEMORY[0x1E696AD98] numberWithDouble:self->_callLongNoonSun];
  [dictionary setObject:v103 forKey:@"callLongNoonSun"];

  v24 = *p_has;
  if ((*p_has & 0x1000000) == 0)
  {
LABEL_97:
    if ((v24 & 0x200000) == 0)
    {
      goto LABEL_98;
    }

    goto LABEL_198;
  }

LABEL_197:
  v104 = [MEMORY[0x1E696AD98] numberWithDouble:self->_callLongEveWeekday];
  [dictionary setObject:v104 forKey:@"callLongEveWeekday"];

  v24 = *p_has;
  if ((*p_has & 0x200000) == 0)
  {
LABEL_98:
    if ((v24 & 0x400000) == 0)
    {
      goto LABEL_99;
    }

    goto LABEL_199;
  }

LABEL_198:
  v105 = [MEMORY[0x1E696AD98] numberWithDouble:self->_callLongEveFri];
  [dictionary setObject:v105 forKey:@"callLongEveFri"];

  v24 = *p_has;
  if ((*p_has & 0x400000) == 0)
  {
LABEL_99:
    if ((v24 & 0x800000) == 0)
    {
      goto LABEL_100;
    }

    goto LABEL_200;
  }

LABEL_199:
  v106 = [MEMORY[0x1E696AD98] numberWithDouble:self->_callLongEveSat];
  [dictionary setObject:v106 forKey:@"callLongEveSat"];

  v24 = *p_has;
  if ((*p_has & 0x800000) == 0)
  {
LABEL_100:
    if ((v24 & 0x100000000) == 0)
    {
      goto LABEL_101;
    }

    goto LABEL_201;
  }

LABEL_200:
  v107 = [MEMORY[0x1E696AD98] numberWithDouble:self->_callLongEveSun];
  [dictionary setObject:v107 forKey:@"callLongEveSun"];

  v24 = *p_has;
  if ((*p_has & 0x100000000) == 0)
  {
LABEL_101:
    if ((v24 & 0x20000000) == 0)
    {
      goto LABEL_102;
    }

    goto LABEL_202;
  }

LABEL_201:
  v108 = [MEMORY[0x1E696AD98] numberWithDouble:self->_callLongNightWeekday];
  [dictionary setObject:v108 forKey:@"callLongNightWeekday"];

  v24 = *p_has;
  if ((*p_has & 0x20000000) == 0)
  {
LABEL_102:
    if ((v24 & 0x40000000) == 0)
    {
      goto LABEL_103;
    }

    goto LABEL_203;
  }

LABEL_202:
  v109 = [MEMORY[0x1E696AD98] numberWithDouble:self->_callLongNightFri];
  [dictionary setObject:v109 forKey:@"callLongNightFri"];

  v24 = *p_has;
  if ((*p_has & 0x40000000) == 0)
  {
LABEL_103:
    if ((v24 & 0x80000000) == 0)
    {
      goto LABEL_105;
    }

    goto LABEL_104;
  }

LABEL_203:
  v110 = [MEMORY[0x1E696AD98] numberWithDouble:self->_callLongNightSat];
  [dictionary setObject:v110 forKey:@"callLongNightSat"];

  if ((*p_has & 0x80000000) != 0)
  {
LABEL_104:
    v25 = [MEMORY[0x1E696AD98] numberWithDouble:self->_callLongNightSun];
    [dictionary setObject:v25 forKey:@"callLongNightSun"];
  }

LABEL_105:
  if ((*(&self->_has + 11) & 0x20) != 0)
  {
    v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_contactFamilyRelation];
    [dictionary setObject:v26 forKey:@"contactFamilyRelation"];
  }

  contactRelation = self->_contactRelation;
  if (contactRelation)
  {
    [dictionary setObject:contactRelation forKey:@"contactRelation"];
  }

  v28 = *(&self->_has + 1);
  if ((v28 & 0x10000000) != 0)
  {
    v111 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_contactFamilyName];
    [dictionary setObject:v111 forKey:@"contactFamilyName"];

    v28 = *(&self->_has + 1);
    if ((v28 & 0x4000000000) == 0)
    {
LABEL_111:
      if ((v28 & 0x4000000) == 0)
      {
        goto LABEL_112;
      }

      goto LABEL_207;
    }
  }

  else if ((v28 & 0x4000000000) == 0)
  {
    goto LABEL_111;
  }

  v112 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_contactParent];
  [dictionary setObject:v112 forKey:@"contactParent"];

  v28 = *(&self->_has + 1);
  if ((v28 & 0x4000000) == 0)
  {
LABEL_112:
    if ((v28 & 0x8000000) == 0)
    {
      goto LABEL_113;
    }

    goto LABEL_208;
  }

LABEL_207:
  v113 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_contactEmergency];
  [dictionary setObject:v113 forKey:@"contactEmergency"];

  v28 = *(&self->_has + 1);
  if ((v28 & 0x8000000) == 0)
  {
LABEL_113:
    if ((v28 & 0x1000000000) == 0)
    {
      goto LABEL_114;
    }

    goto LABEL_209;
  }

LABEL_208:
  v114 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_contactEmergencyFamily];
  [dictionary setObject:v114 forKey:@"contactEmergencyFamily"];

  v28 = *(&self->_has + 1);
  if ((v28 & 0x1000000000) == 0)
  {
LABEL_114:
    if ((v28 & 0x2000000000) == 0)
    {
      goto LABEL_115;
    }

    goto LABEL_210;
  }

LABEL_209:
  v115 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_contactInHome];
  [dictionary setObject:v115 forKey:@"contactInHome"];

  v28 = *(&self->_has + 1);
  if ((v28 & 0x2000000000) == 0)
  {
LABEL_115:
    if ((v28 & 0x80000000) == 0)
    {
      goto LABEL_116;
    }

    goto LABEL_211;
  }

LABEL_210:
  v116 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_contactInPhotos];
  [dictionary setObject:v116 forKey:@"contactInPhotos"];

  v28 = *(&self->_has + 1);
  if ((v28 & 0x80000000) == 0)
  {
LABEL_116:
    if ((v28 & 0x100000000) == 0)
    {
      goto LABEL_117;
    }

    goto LABEL_212;
  }

LABEL_211:
  v117 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_contactInAirDrop];
  [dictionary setObject:v117 forKey:@"contactInAirDrop"];

  v28 = *(&self->_has + 1);
  if ((v28 & 0x100000000) == 0)
  {
LABEL_117:
    if ((v28 & 0x400000000) == 0)
    {
      goto LABEL_118;
    }

    goto LABEL_213;
  }

LABEL_212:
  v118 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_contactInAirDropAtHome];
  [dictionary setObject:v118 forKey:@"contactInAirDropAtHome"];

  v28 = *(&self->_has + 1);
  if ((v28 & 0x400000000) == 0)
  {
LABEL_118:
    if ((v28 & 0x800000000) == 0)
    {
      goto LABEL_119;
    }

LABEL_214:
    v120 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_contactInFMFSharingWithMe];
    [dictionary setObject:v120 forKey:@"contactInFMFSharingWithMe"];

    if ((*(&self->_has + 1) & 0x200000000) == 0)
    {
      goto LABEL_121;
    }

    goto LABEL_120;
  }

LABEL_213:
  v119 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_contactInFMFFollowingMe];
  [dictionary setObject:v119 forKey:@"contactInFMFFollowingMe"];

  v28 = *(&self->_has + 1);
  if ((v28 & 0x800000000) != 0)
  {
    goto LABEL_214;
  }

LABEL_119:
  if ((v28 & 0x200000000) != 0)
  {
LABEL_120:
    v29 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_contactInFMFFavorite];
    [dictionary setObject:v29 forKey:@"contactInFMFFavorite"];
  }

LABEL_121:
  v30 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_mailIntelligenceContactId];
  [dictionary setObject:v30 forKey:@"mailIntelligenceContactId"];

  v31 = dictionary;
  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  p_has = &self->_has;
  v5 = *(&self->_has + 1);
  if ((v5 & 0x80) != 0)
  {
    firstPartyMsgTotal = self->_firstPartyMsgTotal;
    PBDataWriterWriteUint64Field();
    v5 = *(&self->_has + 1);
  }

  if ((v5 & 0x40) != 0)
  {
    firstPartyMsgOutgoingRatio = self->_firstPartyMsgOutgoingRatio;
    PBDataWriterWriteDoubleField();
  }

  v8 = *p_has;
  if ((*p_has & 0x2000000000000000) != 0)
  {
    firstPartyMsgMorningWeekday = self->_firstPartyMsgMorningWeekday;
    PBDataWriterWriteDoubleField();
    v8 = *p_has;
    if ((*p_has & 0x400000000000000) == 0)
    {
LABEL_7:
      if ((v8 & 0x800000000000000) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_126;
    }
  }

  else if ((v8 & 0x400000000000000) == 0)
  {
    goto LABEL_7;
  }

  firstPartyMsgMorningFri = self->_firstPartyMsgMorningFri;
  PBDataWriterWriteDoubleField();
  v8 = *p_has;
  if ((*p_has & 0x800000000000000) == 0)
  {
LABEL_8:
    if ((v8 & 0x1000000000000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_126:
  firstPartyMsgMorningSat = self->_firstPartyMsgMorningSat;
  PBDataWriterWriteDoubleField();
  if ((*p_has & 0x1000000000000000) != 0)
  {
LABEL_9:
    firstPartyMsgMorningSun = self->_firstPartyMsgMorningSun;
    PBDataWriterWriteDoubleField();
  }

LABEL_10:
  v10 = *(&self->_has + 1);
  if ((v10 & 0x20) != 0)
  {
    firstPartyMsgNoonWeekday = self->_firstPartyMsgNoonWeekday;
    PBDataWriterWriteDoubleField();
    v10 = *(&self->_has + 1);
    if ((v10 & 4) == 0)
    {
LABEL_12:
      if ((v10 & 8) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_130;
    }
  }

  else if ((v10 & 4) == 0)
  {
    goto LABEL_12;
  }

  firstPartyMsgNoonFri = self->_firstPartyMsgNoonFri;
  PBDataWriterWriteDoubleField();
  v10 = *(&self->_has + 1);
  if ((v10 & 8) == 0)
  {
LABEL_13:
    if ((v10 & 0x10) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_130:
  firstPartyMsgNoonSat = self->_firstPartyMsgNoonSat;
  PBDataWriterWriteDoubleField();
  if ((*(&self->_has + 1) & 0x10) != 0)
  {
LABEL_14:
    firstPartyMsgNoonSun = self->_firstPartyMsgNoonSun;
    PBDataWriterWriteDoubleField();
  }

LABEL_15:
  v12 = *p_has;
  if ((*p_has & 0x200000000000000) != 0)
  {
    firstPartyMsgEveWeekday = self->_firstPartyMsgEveWeekday;
    PBDataWriterWriteDoubleField();
    v12 = *p_has;
    if ((*p_has & 0x40000000000000) == 0)
    {
LABEL_17:
      if ((v12 & 0x80000000000000) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_134;
    }
  }

  else if ((v12 & 0x40000000000000) == 0)
  {
    goto LABEL_17;
  }

  firstPartyMsgEveFri = self->_firstPartyMsgEveFri;
  PBDataWriterWriteDoubleField();
  v12 = *p_has;
  if ((*p_has & 0x80000000000000) == 0)
  {
LABEL_18:
    if ((v12 & 0x100000000000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_134:
  firstPartyMsgEveSat = self->_firstPartyMsgEveSat;
  PBDataWriterWriteDoubleField();
  if ((*p_has & 0x100000000000000) != 0)
  {
LABEL_19:
    firstPartyMsgEveSun = self->_firstPartyMsgEveSun;
    PBDataWriterWriteDoubleField();
  }

LABEL_20:
  if ((*(&self->_has + 8) & 2) != 0)
  {
    firstPartyMsgNightWeekday = self->_firstPartyMsgNightWeekday;
    PBDataWriterWriteDoubleField();
  }

  v15 = *p_has;
  if ((*p_has & 0x4000000000000000) != 0)
  {
    firstPartyMsgNightFri = self->_firstPartyMsgNightFri;
    PBDataWriterWriteDoubleField();
    v15 = *p_has;
  }

  if (v15 < 0)
  {
    firstPartyMsgNightSat = self->_firstPartyMsgNightSat;
    PBDataWriterWriteDoubleField();
  }

  v18 = *(&self->_has + 1);
  if (v18)
  {
    firstPartyMsgNightSun = self->_firstPartyMsgNightSun;
    PBDataWriterWriteDoubleField();
    v18 = *(&self->_has + 1);
    if ((v18 & 0x1000000) == 0)
    {
LABEL_28:
      if ((v18 & 0x8000) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_138;
    }
  }

  else if ((v18 & 0x1000000) == 0)
  {
    goto LABEL_28;
  }

  thirdPartyMsgTotal = self->_thirdPartyMsgTotal;
  PBDataWriterWriteUint64Field();
  v18 = *(&self->_has + 1);
  if ((v18 & 0x8000) == 0)
  {
LABEL_29:
    if ((v18 & 0x1000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_139;
  }

LABEL_138:
  thirdPartyMsgMorningWeekday = self->_thirdPartyMsgMorningWeekday;
  PBDataWriterWriteDoubleField();
  v18 = *(&self->_has + 1);
  if ((v18 & 0x1000) == 0)
  {
LABEL_30:
    if ((v18 & 0x2000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_140;
  }

LABEL_139:
  thirdPartyMsgMorningFri = self->_thirdPartyMsgMorningFri;
  PBDataWriterWriteDoubleField();
  v18 = *(&self->_has + 1);
  if ((v18 & 0x2000) == 0)
  {
LABEL_31:
    if ((v18 & 0x4000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_141;
  }

LABEL_140:
  thirdPartyMsgMorningSat = self->_thirdPartyMsgMorningSat;
  PBDataWriterWriteDoubleField();
  v18 = *(&self->_has + 1);
  if ((v18 & 0x4000) == 0)
  {
LABEL_32:
    if ((v18 & 0x800000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_142;
  }

LABEL_141:
  thirdPartyMsgMorningSun = self->_thirdPartyMsgMorningSun;
  PBDataWriterWriteDoubleField();
  v18 = *(&self->_has + 1);
  if ((v18 & 0x800000) == 0)
  {
LABEL_33:
    if ((v18 & 0x100000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_143;
  }

LABEL_142:
  thirdPartyMsgNoonWeekday = self->_thirdPartyMsgNoonWeekday;
  PBDataWriterWriteDoubleField();
  v18 = *(&self->_has + 1);
  if ((v18 & 0x100000) == 0)
  {
LABEL_34:
    if ((v18 & 0x200000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_144;
  }

LABEL_143:
  thirdPartyMsgNoonFri = self->_thirdPartyMsgNoonFri;
  PBDataWriterWriteDoubleField();
  v18 = *(&self->_has + 1);
  if ((v18 & 0x200000) == 0)
  {
LABEL_35:
    if ((v18 & 0x400000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_145;
  }

LABEL_144:
  thirdPartyMsgNoonSat = self->_thirdPartyMsgNoonSat;
  PBDataWriterWriteDoubleField();
  v18 = *(&self->_has + 1);
  if ((v18 & 0x400000) == 0)
  {
LABEL_36:
    if ((v18 & 0x800) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_146;
  }

LABEL_145:
  thirdPartyMsgNoonSun = self->_thirdPartyMsgNoonSun;
  PBDataWriterWriteDoubleField();
  v18 = *(&self->_has + 1);
  if ((v18 & 0x800) == 0)
  {
LABEL_37:
    if ((v18 & 0x100) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_147;
  }

LABEL_146:
  thirdPartyMsgEveWeekday = self->_thirdPartyMsgEveWeekday;
  PBDataWriterWriteDoubleField();
  v18 = *(&self->_has + 1);
  if ((v18 & 0x100) == 0)
  {
LABEL_38:
    if ((v18 & 0x200) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_148;
  }

LABEL_147:
  thirdPartyMsgEveFri = self->_thirdPartyMsgEveFri;
  PBDataWriterWriteDoubleField();
  v18 = *(&self->_has + 1);
  if ((v18 & 0x200) == 0)
  {
LABEL_39:
    if ((v18 & 0x400) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_149;
  }

LABEL_148:
  thirdPartyMsgEveSat = self->_thirdPartyMsgEveSat;
  PBDataWriterWriteDoubleField();
  v18 = *(&self->_has + 1);
  if ((v18 & 0x400) == 0)
  {
LABEL_40:
    if ((v18 & 0x80000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_150;
  }

LABEL_149:
  thirdPartyMsgEveSun = self->_thirdPartyMsgEveSun;
  PBDataWriterWriteDoubleField();
  v18 = *(&self->_has + 1);
  if ((v18 & 0x80000) == 0)
  {
LABEL_41:
    if ((v18 & 0x10000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_151;
  }

LABEL_150:
  thirdPartyMsgNightWeekday = self->_thirdPartyMsgNightWeekday;
  PBDataWriterWriteDoubleField();
  v18 = *(&self->_has + 1);
  if ((v18 & 0x10000) == 0)
  {
LABEL_42:
    if ((v18 & 0x20000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_152;
  }

LABEL_151:
  thirdPartyMsgNightFri = self->_thirdPartyMsgNightFri;
  PBDataWriterWriteDoubleField();
  v18 = *(&self->_has + 1);
  if ((v18 & 0x20000) == 0)
  {
LABEL_43:
    if ((v18 & 0x40000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

LABEL_152:
  thirdPartyMsgNightSat = self->_thirdPartyMsgNightSat;
  PBDataWriterWriteDoubleField();
  if ((*(&self->_has + 1) & 0x40000) != 0)
  {
LABEL_44:
    thirdPartyMsgNightSun = self->_thirdPartyMsgNightSun;
    PBDataWriterWriteDoubleField();
  }

LABEL_45:
  if ((*(&self->_has + 6) & 0x10) != 0)
  {
    callTotal = self->_callTotal;
    PBDataWriterWriteUint64Field();
  }

  v21 = *(&self->_has + 1);
  if ((v21 & 0x2000000) != 0)
  {
    callBirthday = self->_callBirthday;
    PBDataWriterWriteUint32Field();
    v21 = *(&self->_has + 1);
  }

  if ((v21 & 0x40000000) != 0)
  {
    contactFavorite = self->_contactFavorite;
    PBDataWriterWriteUint32Field();
  }

  v24 = *p_has;
  if ((*p_has & 0x20000000000000) != 0)
  {
    callTotalDur = self->_callTotalDur;
    PBDataWriterWriteDoubleField();
    v24 = *p_has;
    if ((*p_has & 0x2000000000) == 0)
    {
LABEL_53:
      if ((v24 & 0x8000000000000) == 0)
      {
        goto LABEL_54;
      }

      goto LABEL_156;
    }
  }

  else if ((v24 & 0x2000000000) == 0)
  {
    goto LABEL_53;
  }

  callLongRatio = self->_callLongRatio;
  PBDataWriterWriteDoubleField();
  v24 = *p_has;
  if ((*p_has & 0x8000000000000) == 0)
  {
LABEL_54:
    if ((v24 & 1) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_157;
  }

LABEL_156:
  callOutgoingRatio = self->_callOutgoingRatio;
  PBDataWriterWriteDoubleField();
  v24 = *p_has;
  if ((*p_has & 1) == 0)
  {
LABEL_55:
    if ((v24 & 0x4000000000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_158;
  }

LABEL_157:
  callAvgDur = self->_callAvgDur;
  PBDataWriterWriteDoubleField();
  v24 = *p_has;
  if ((*p_has & 0x4000000000) == 0)
  {
LABEL_56:
    if ((v24 & 0x40000000000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_159;
  }

LABEL_158:
  callMaxDur = self->_callMaxDur;
  PBDataWriterWriteDoubleField();
  v24 = *p_has;
  if ((*p_has & 0x40000000000) == 0)
  {
LABEL_57:
    if ((v24 & 0x8000000000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_160;
  }

LABEL_159:
  callMorningWeekday = self->_callMorningWeekday;
  PBDataWriterWriteDoubleField();
  v24 = *p_has;
  if ((*p_has & 0x8000000000) == 0)
  {
LABEL_58:
    if ((v24 & 0x10000000000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_161;
  }

LABEL_160:
  callMorningFri = self->_callMorningFri;
  PBDataWriterWriteDoubleField();
  v24 = *p_has;
  if ((*p_has & 0x10000000000) == 0)
  {
LABEL_59:
    if ((v24 & 0x20000000000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_162;
  }

LABEL_161:
  callMorningSat = self->_callMorningSat;
  PBDataWriterWriteDoubleField();
  v24 = *p_has;
  if ((*p_has & 0x20000000000) == 0)
  {
LABEL_60:
    if ((v24 & 0x4000000000000) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_163;
  }

LABEL_162:
  callMorningSun = self->_callMorningSun;
  PBDataWriterWriteDoubleField();
  v24 = *p_has;
  if ((*p_has & 0x4000000000000) == 0)
  {
LABEL_61:
    if ((v24 & 0x800000000000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_164;
  }

LABEL_163:
  callNoonWeekday = self->_callNoonWeekday;
  PBDataWriterWriteDoubleField();
  v24 = *p_has;
  if ((*p_has & 0x800000000000) == 0)
  {
LABEL_62:
    if ((v24 & 0x1000000000000) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_165;
  }

LABEL_164:
  callNoonFri = self->_callNoonFri;
  PBDataWriterWriteDoubleField();
  v24 = *p_has;
  if ((*p_has & 0x1000000000000) == 0)
  {
LABEL_63:
    if ((v24 & 0x2000000000000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_166;
  }

LABEL_165:
  callNoonSat = self->_callNoonSat;
  PBDataWriterWriteDoubleField();
  v24 = *p_has;
  if ((*p_has & 0x2000000000000) == 0)
  {
LABEL_64:
    if ((v24 & 0x100000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_167;
  }

LABEL_166:
  callNoonSun = self->_callNoonSun;
  PBDataWriterWriteDoubleField();
  v24 = *p_has;
  if ((*p_has & 0x100000) == 0)
  {
LABEL_65:
    if ((v24 & 0x20000) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_168;
  }

LABEL_167:
  callEveWeekday = self->_callEveWeekday;
  PBDataWriterWriteDoubleField();
  v24 = *p_has;
  if ((*p_has & 0x20000) == 0)
  {
LABEL_66:
    if ((v24 & 0x40000) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_169;
  }

LABEL_168:
  callEveFri = self->_callEveFri;
  PBDataWriterWriteDoubleField();
  v24 = *p_has;
  if ((*p_has & 0x40000) == 0)
  {
LABEL_67:
    if ((v24 & 0x80000) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_170;
  }

LABEL_169:
  callEveSat = self->_callEveSat;
  PBDataWriterWriteDoubleField();
  v24 = *p_has;
  if ((*p_has & 0x80000) == 0)
  {
LABEL_68:
    if ((v24 & 0x400000000000) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_171;
  }

LABEL_170:
  callEveSun = self->_callEveSun;
  PBDataWriterWriteDoubleField();
  v24 = *p_has;
  if ((*p_has & 0x400000000000) == 0)
  {
LABEL_69:
    if ((v24 & 0x80000000000) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_172;
  }

LABEL_171:
  callNightWeekday = self->_callNightWeekday;
  PBDataWriterWriteDoubleField();
  v24 = *p_has;
  if ((*p_has & 0x80000000000) == 0)
  {
LABEL_70:
    if ((v24 & 0x100000000000) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_173;
  }

LABEL_172:
  callNightFri = self->_callNightFri;
  PBDataWriterWriteDoubleField();
  v24 = *p_has;
  if ((*p_has & 0x100000000000) == 0)
  {
LABEL_71:
    if ((v24 & 0x200000000000) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_174;
  }

LABEL_173:
  callNightSat = self->_callNightSat;
  PBDataWriterWriteDoubleField();
  v24 = *p_has;
  if ((*p_has & 0x200000000000) == 0)
  {
LABEL_72:
    if ((v24 & 0x100) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_175;
  }

LABEL_174:
  callNightSun = self->_callNightSun;
  PBDataWriterWriteDoubleField();
  v24 = *p_has;
  if ((*p_has & 0x100) == 0)
  {
LABEL_73:
    if ((v24 & 0x20) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_176;
  }

LABEL_175:
  callDurMorningWeekday = self->_callDurMorningWeekday;
  PBDataWriterWriteDoubleField();
  v24 = *p_has;
  if ((*p_has & 0x20) == 0)
  {
LABEL_74:
    if ((v24 & 0x40) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_177;
  }

LABEL_176:
  callDurMorningFri = self->_callDurMorningFri;
  PBDataWriterWriteDoubleField();
  v24 = *p_has;
  if ((*p_has & 0x40) == 0)
  {
LABEL_75:
    if ((v24 & 0x80) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_178;
  }

LABEL_177:
  callDurMorningSat = self->_callDurMorningSat;
  PBDataWriterWriteDoubleField();
  v24 = *p_has;
  if ((*p_has & 0x80) == 0)
  {
LABEL_76:
    if ((v24 & 0x10000) == 0)
    {
      goto LABEL_77;
    }

    goto LABEL_179;
  }

LABEL_178:
  callDurMorningSun = self->_callDurMorningSun;
  PBDataWriterWriteDoubleField();
  v24 = *p_has;
  if ((*p_has & 0x10000) == 0)
  {
LABEL_77:
    if ((v24 & 0x2000) == 0)
    {
      goto LABEL_78;
    }

    goto LABEL_180;
  }

LABEL_179:
  callDurNoonWeekday = self->_callDurNoonWeekday;
  PBDataWriterWriteDoubleField();
  v24 = *p_has;
  if ((*p_has & 0x2000) == 0)
  {
LABEL_78:
    if ((v24 & 0x4000) == 0)
    {
      goto LABEL_79;
    }

    goto LABEL_181;
  }

LABEL_180:
  callDurNoonFri = self->_callDurNoonFri;
  PBDataWriterWriteDoubleField();
  v24 = *p_has;
  if ((*p_has & 0x4000) == 0)
  {
LABEL_79:
    if ((v24 & 0x8000) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_182;
  }

LABEL_181:
  callDurNoonSat = self->_callDurNoonSat;
  PBDataWriterWriteDoubleField();
  v24 = *p_has;
  if ((*p_has & 0x8000) == 0)
  {
LABEL_80:
    if ((v24 & 0x10) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_183;
  }

LABEL_182:
  callDurNoonSun = self->_callDurNoonSun;
  PBDataWriterWriteDoubleField();
  v24 = *p_has;
  if ((*p_has & 0x10) == 0)
  {
LABEL_81:
    if ((v24 & 2) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_184;
  }

LABEL_183:
  callDurEveWeekday = self->_callDurEveWeekday;
  PBDataWriterWriteDoubleField();
  v24 = *p_has;
  if ((*p_has & 2) == 0)
  {
LABEL_82:
    if ((v24 & 4) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_185;
  }

LABEL_184:
  callDurEveFri = self->_callDurEveFri;
  PBDataWriterWriteDoubleField();
  v24 = *p_has;
  if ((*p_has & 4) == 0)
  {
LABEL_83:
    if ((v24 & 8) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_186;
  }

LABEL_185:
  callDurEveSat = self->_callDurEveSat;
  PBDataWriterWriteDoubleField();
  v24 = *p_has;
  if ((*p_has & 8) == 0)
  {
LABEL_84:
    if ((v24 & 0x1000) == 0)
    {
      goto LABEL_85;
    }

    goto LABEL_187;
  }

LABEL_186:
  callDurEveSun = self->_callDurEveSun;
  PBDataWriterWriteDoubleField();
  v24 = *p_has;
  if ((*p_has & 0x1000) == 0)
  {
LABEL_85:
    if ((v24 & 0x200) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_188;
  }

LABEL_187:
  callDurNightWeekday = self->_callDurNightWeekday;
  PBDataWriterWriteDoubleField();
  v24 = *p_has;
  if ((*p_has & 0x200) == 0)
  {
LABEL_86:
    if ((v24 & 0x400) == 0)
    {
      goto LABEL_87;
    }

    goto LABEL_189;
  }

LABEL_188:
  callDurNightFri = self->_callDurNightFri;
  PBDataWriterWriteDoubleField();
  v24 = *p_has;
  if ((*p_has & 0x400) == 0)
  {
LABEL_87:
    if ((v24 & 0x800) == 0)
    {
      goto LABEL_88;
    }

    goto LABEL_190;
  }

LABEL_189:
  callDurNightSat = self->_callDurNightSat;
  PBDataWriterWriteDoubleField();
  v24 = *p_has;
  if ((*p_has & 0x800) == 0)
  {
LABEL_88:
    if ((v24 & 0x10000000) == 0)
    {
      goto LABEL_89;
    }

    goto LABEL_191;
  }

LABEL_190:
  callDurNightSun = self->_callDurNightSun;
  PBDataWriterWriteDoubleField();
  v24 = *p_has;
  if ((*p_has & 0x10000000) == 0)
  {
LABEL_89:
    if ((v24 & 0x2000000) == 0)
    {
      goto LABEL_90;
    }

    goto LABEL_192;
  }

LABEL_191:
  callLongMorningWeekday = self->_callLongMorningWeekday;
  PBDataWriterWriteDoubleField();
  v24 = *p_has;
  if ((*p_has & 0x2000000) == 0)
  {
LABEL_90:
    if ((v24 & 0x4000000) == 0)
    {
      goto LABEL_91;
    }

    goto LABEL_193;
  }

LABEL_192:
  callLongMorningFri = self->_callLongMorningFri;
  PBDataWriterWriteDoubleField();
  v24 = *p_has;
  if ((*p_has & 0x4000000) == 0)
  {
LABEL_91:
    if ((v24 & 0x8000000) == 0)
    {
      goto LABEL_92;
    }

    goto LABEL_194;
  }

LABEL_193:
  callLongMorningSat = self->_callLongMorningSat;
  PBDataWriterWriteDoubleField();
  v24 = *p_has;
  if ((*p_has & 0x8000000) == 0)
  {
LABEL_92:
    if ((v24 & 0x1000000000) == 0)
    {
      goto LABEL_93;
    }

    goto LABEL_195;
  }

LABEL_194:
  callLongMorningSun = self->_callLongMorningSun;
  PBDataWriterWriteDoubleField();
  v24 = *p_has;
  if ((*p_has & 0x1000000000) == 0)
  {
LABEL_93:
    if ((v24 & 0x200000000) == 0)
    {
      goto LABEL_94;
    }

    goto LABEL_196;
  }

LABEL_195:
  callLongNoonWeekday = self->_callLongNoonWeekday;
  PBDataWriterWriteDoubleField();
  v24 = *p_has;
  if ((*p_has & 0x200000000) == 0)
  {
LABEL_94:
    if ((v24 & 0x400000000) == 0)
    {
      goto LABEL_95;
    }

    goto LABEL_197;
  }

LABEL_196:
  callLongNoonFri = self->_callLongNoonFri;
  PBDataWriterWriteDoubleField();
  v24 = *p_has;
  if ((*p_has & 0x400000000) == 0)
  {
LABEL_95:
    if ((v24 & 0x800000000) == 0)
    {
      goto LABEL_96;
    }

    goto LABEL_198;
  }

LABEL_197:
  callLongNoonSat = self->_callLongNoonSat;
  PBDataWriterWriteDoubleField();
  v24 = *p_has;
  if ((*p_has & 0x800000000) == 0)
  {
LABEL_96:
    if ((v24 & 0x1000000) == 0)
    {
      goto LABEL_97;
    }

    goto LABEL_199;
  }

LABEL_198:
  callLongNoonSun = self->_callLongNoonSun;
  PBDataWriterWriteDoubleField();
  v24 = *p_has;
  if ((*p_has & 0x1000000) == 0)
  {
LABEL_97:
    if ((v24 & 0x200000) == 0)
    {
      goto LABEL_98;
    }

    goto LABEL_200;
  }

LABEL_199:
  callLongEveWeekday = self->_callLongEveWeekday;
  PBDataWriterWriteDoubleField();
  v24 = *p_has;
  if ((*p_has & 0x200000) == 0)
  {
LABEL_98:
    if ((v24 & 0x400000) == 0)
    {
      goto LABEL_99;
    }

    goto LABEL_201;
  }

LABEL_200:
  callLongEveFri = self->_callLongEveFri;
  PBDataWriterWriteDoubleField();
  v24 = *p_has;
  if ((*p_has & 0x400000) == 0)
  {
LABEL_99:
    if ((v24 & 0x800000) == 0)
    {
      goto LABEL_100;
    }

    goto LABEL_202;
  }

LABEL_201:
  callLongEveSat = self->_callLongEveSat;
  PBDataWriterWriteDoubleField();
  v24 = *p_has;
  if ((*p_has & 0x800000) == 0)
  {
LABEL_100:
    if ((v24 & 0x100000000) == 0)
    {
      goto LABEL_101;
    }

    goto LABEL_203;
  }

LABEL_202:
  callLongEveSun = self->_callLongEveSun;
  PBDataWriterWriteDoubleField();
  v24 = *p_has;
  if ((*p_has & 0x100000000) == 0)
  {
LABEL_101:
    if ((v24 & 0x20000000) == 0)
    {
      goto LABEL_102;
    }

    goto LABEL_204;
  }

LABEL_203:
  callLongNightWeekday = self->_callLongNightWeekday;
  PBDataWriterWriteDoubleField();
  v24 = *p_has;
  if ((*p_has & 0x20000000) == 0)
  {
LABEL_102:
    if ((v24 & 0x40000000) == 0)
    {
      goto LABEL_103;
    }

    goto LABEL_205;
  }

LABEL_204:
  callLongNightFri = self->_callLongNightFri;
  PBDataWriterWriteDoubleField();
  v24 = *p_has;
  if ((*p_has & 0x40000000) == 0)
  {
LABEL_103:
    if ((v24 & 0x80000000) == 0)
    {
      goto LABEL_105;
    }

    goto LABEL_104;
  }

LABEL_205:
  callLongNightSat = self->_callLongNightSat;
  PBDataWriterWriteDoubleField();
  if ((*p_has & 0x80000000) != 0)
  {
LABEL_104:
    callLongNightSun = self->_callLongNightSun;
    PBDataWriterWriteDoubleField();
  }

LABEL_105:
  if ((*(&self->_has + 11) & 0x20) != 0)
  {
    contactFamilyRelation = self->_contactFamilyRelation;
    PBDataWriterWriteUint32Field();
  }

  if (self->_contactRelation)
  {
    PBDataWriterWriteStringField();
  }

  v27 = *(&self->_has + 1);
  if ((v27 & 0x10000000) != 0)
  {
    contactFamilyName = self->_contactFamilyName;
    PBDataWriterWriteUint32Field();
    v27 = *(&self->_has + 1);
    if ((v27 & 0x4000000000) == 0)
    {
LABEL_111:
      if ((v27 & 0x4000000) == 0)
      {
        goto LABEL_112;
      }

      goto LABEL_209;
    }
  }

  else if ((v27 & 0x4000000000) == 0)
  {
    goto LABEL_111;
  }

  contactParent = self->_contactParent;
  PBDataWriterWriteUint32Field();
  v27 = *(&self->_has + 1);
  if ((v27 & 0x4000000) == 0)
  {
LABEL_112:
    if ((v27 & 0x8000000) == 0)
    {
      goto LABEL_113;
    }

    goto LABEL_210;
  }

LABEL_209:
  contactEmergency = self->_contactEmergency;
  PBDataWriterWriteUint32Field();
  v27 = *(&self->_has + 1);
  if ((v27 & 0x8000000) == 0)
  {
LABEL_113:
    if ((v27 & 0x1000000000) == 0)
    {
      goto LABEL_114;
    }

    goto LABEL_211;
  }

LABEL_210:
  contactEmergencyFamily = self->_contactEmergencyFamily;
  PBDataWriterWriteUint32Field();
  v27 = *(&self->_has + 1);
  if ((v27 & 0x1000000000) == 0)
  {
LABEL_114:
    if ((v27 & 0x2000000000) == 0)
    {
      goto LABEL_115;
    }

    goto LABEL_212;
  }

LABEL_211:
  contactInHome = self->_contactInHome;
  PBDataWriterWriteUint32Field();
  v27 = *(&self->_has + 1);
  if ((v27 & 0x2000000000) == 0)
  {
LABEL_115:
    if ((v27 & 0x80000000) == 0)
    {
      goto LABEL_116;
    }

    goto LABEL_213;
  }

LABEL_212:
  contactInPhotos = self->_contactInPhotos;
  PBDataWriterWriteUint32Field();
  v27 = *(&self->_has + 1);
  if ((v27 & 0x80000000) == 0)
  {
LABEL_116:
    if ((v27 & 0x100000000) == 0)
    {
      goto LABEL_117;
    }

    goto LABEL_214;
  }

LABEL_213:
  contactInAirDrop = self->_contactInAirDrop;
  PBDataWriterWriteUint32Field();
  v27 = *(&self->_has + 1);
  if ((v27 & 0x100000000) == 0)
  {
LABEL_117:
    if ((v27 & 0x400000000) == 0)
    {
      goto LABEL_118;
    }

    goto LABEL_215;
  }

LABEL_214:
  contactInAirDropAtHome = self->_contactInAirDropAtHome;
  PBDataWriterWriteUint32Field();
  v27 = *(&self->_has + 1);
  if ((v27 & 0x400000000) == 0)
  {
LABEL_118:
    if ((v27 & 0x800000000) == 0)
    {
      goto LABEL_119;
    }

    goto LABEL_216;
  }

LABEL_215:
  contactInFMFFollowingMe = self->_contactInFMFFollowingMe;
  PBDataWriterWriteUint32Field();
  v27 = *(&self->_has + 1);
  if ((v27 & 0x800000000) == 0)
  {
LABEL_119:
    if ((v27 & 0x200000000) == 0)
    {
      goto LABEL_121;
    }

    goto LABEL_120;
  }

LABEL_216:
  contactInFMFSharingWithMe = self->_contactInFMFSharingWithMe;
  PBDataWriterWriteUint32Field();
  if ((*(&self->_has + 1) & 0x200000000) != 0)
  {
LABEL_120:
    contactInFMFFavorite = self->_contactInFMFFavorite;
    PBDataWriterWriteUint32Field();
  }

LABEL_121:
  mailIntelligenceContactId = self->_mailIntelligenceContactId;
  PBDataWriterWriteUint64Field();
}

- (void)copyTo:(id)to
{
  toCopy = to;
  p_has = &self->_has;
  v6 = *(&self->_has + 1);
  if ((v6 & 0x80) != 0)
  {
    toCopy[72] = self->_firstPartyMsgTotal;
    toCopy[100] |= 0x80uLL;
    v6 = *(&self->_has + 1);
  }

  if ((v6 & 0x40) != 0)
  {
    toCopy[71] = *&self->_firstPartyMsgOutgoingRatio;
    toCopy[100] |= 0x40uLL;
  }

  has = *p_has;
  if ((*p_has & 0x2000000000000000) != 0)
  {
    toCopy[62] = *&self->_firstPartyMsgMorningWeekday;
    toCopy[99] |= 0x2000000000000000uLL;
    has = self->_has;
    if ((has & 0x400000000000000) == 0)
    {
LABEL_7:
      if ((has & 0x800000000000000) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_126;
    }
  }

  else if ((has & 0x400000000000000) == 0)
  {
    goto LABEL_7;
  }

  toCopy[59] = *&self->_firstPartyMsgMorningFri;
  toCopy[99] |= 0x400000000000000uLL;
  has = self->_has;
  if ((has & 0x800000000000000) == 0)
  {
LABEL_8:
    if ((has & 0x1000000000000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_126:
  toCopy[60] = *&self->_firstPartyMsgMorningSat;
  toCopy[99] |= 0x800000000000000uLL;
  if ((*&self->_has & 0x1000000000000000) != 0)
  {
LABEL_9:
    toCopy[61] = *&self->_firstPartyMsgMorningSun;
    toCopy[99] |= 0x1000000000000000uLL;
  }

LABEL_10:
  v8 = *(&self->_has + 1);
  if ((v8 & 0x20) != 0)
  {
    toCopy[70] = *&self->_firstPartyMsgNoonWeekday;
    toCopy[100] |= 0x20uLL;
    v8 = *(&self->_has + 1);
    if ((v8 & 4) == 0)
    {
LABEL_12:
      if ((v8 & 8) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_130;
    }
  }

  else if ((v8 & 4) == 0)
  {
    goto LABEL_12;
  }

  toCopy[67] = *&self->_firstPartyMsgNoonFri;
  toCopy[100] |= 4uLL;
  v8 = *(&self->_has + 1);
  if ((v8 & 8) == 0)
  {
LABEL_13:
    if ((v8 & 0x10) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_130:
  toCopy[68] = *&self->_firstPartyMsgNoonSat;
  toCopy[100] |= 8uLL;
  if ((*(&self->_has + 1) & 0x10) != 0)
  {
LABEL_14:
    toCopy[69] = *&self->_firstPartyMsgNoonSun;
    toCopy[100] |= 0x10uLL;
  }

LABEL_15:
  v9 = *p_has;
  if ((*p_has & 0x200000000000000) != 0)
  {
    toCopy[58] = *&self->_firstPartyMsgEveWeekday;
    toCopy[99] |= 0x200000000000000uLL;
    v9 = self->_has;
    if ((v9 & 0x40000000000000) == 0)
    {
LABEL_17:
      if ((v9 & 0x80000000000000) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_134;
    }
  }

  else if ((v9 & 0x40000000000000) == 0)
  {
    goto LABEL_17;
  }

  toCopy[55] = *&self->_firstPartyMsgEveFri;
  toCopy[99] |= 0x40000000000000uLL;
  v9 = self->_has;
  if ((v9 & 0x80000000000000) == 0)
  {
LABEL_18:
    if ((v9 & 0x100000000000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_134:
  toCopy[56] = *&self->_firstPartyMsgEveSat;
  toCopy[99] |= 0x80000000000000uLL;
  if ((*&self->_has & 0x100000000000000) != 0)
  {
LABEL_19:
    toCopy[57] = *&self->_firstPartyMsgEveSun;
    toCopy[99] |= 0x100000000000000uLL;
  }

LABEL_20:
  if ((*(&self->_has + 8) & 2) != 0)
  {
    toCopy[66] = *&self->_firstPartyMsgNightWeekday;
    toCopy[100] |= 2uLL;
  }

  v10 = *p_has;
  if ((*p_has & 0x4000000000000000) != 0)
  {
    toCopy[63] = *&self->_firstPartyMsgNightFri;
    toCopy[99] |= 0x4000000000000000uLL;
    v10 = self->_has;
  }

  if (v10 < 0)
  {
    toCopy[64] = *&self->_firstPartyMsgNightSat;
    toCopy[99] |= 0x8000000000000000;
  }

  v11 = *(&self->_has + 1);
  if (v11)
  {
    toCopy[65] = *&self->_firstPartyMsgNightSun;
    toCopy[100] |= 1uLL;
    v11 = *(&self->_has + 1);
    if ((v11 & 0x1000000) == 0)
    {
LABEL_28:
      if ((v11 & 0x8000) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_138;
    }
  }

  else if ((v11 & 0x1000000) == 0)
  {
    goto LABEL_28;
  }

  toCopy[90] = self->_thirdPartyMsgTotal;
  toCopy[100] |= 0x1000000uLL;
  v11 = *(&self->_has + 1);
  if ((v11 & 0x8000) == 0)
  {
LABEL_29:
    if ((v11 & 0x1000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_139;
  }

LABEL_138:
  toCopy[81] = *&self->_thirdPartyMsgMorningWeekday;
  toCopy[100] |= 0x8000uLL;
  v11 = *(&self->_has + 1);
  if ((v11 & 0x1000) == 0)
  {
LABEL_30:
    if ((v11 & 0x2000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_140;
  }

LABEL_139:
  toCopy[78] = *&self->_thirdPartyMsgMorningFri;
  toCopy[100] |= 0x1000uLL;
  v11 = *(&self->_has + 1);
  if ((v11 & 0x2000) == 0)
  {
LABEL_31:
    if ((v11 & 0x4000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_141;
  }

LABEL_140:
  toCopy[79] = *&self->_thirdPartyMsgMorningSat;
  toCopy[100] |= 0x2000uLL;
  v11 = *(&self->_has + 1);
  if ((v11 & 0x4000) == 0)
  {
LABEL_32:
    if ((v11 & 0x800000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_142;
  }

LABEL_141:
  toCopy[80] = *&self->_thirdPartyMsgMorningSun;
  toCopy[100] |= 0x4000uLL;
  v11 = *(&self->_has + 1);
  if ((v11 & 0x800000) == 0)
  {
LABEL_33:
    if ((v11 & 0x100000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_143;
  }

LABEL_142:
  toCopy[89] = *&self->_thirdPartyMsgNoonWeekday;
  toCopy[100] |= 0x800000uLL;
  v11 = *(&self->_has + 1);
  if ((v11 & 0x100000) == 0)
  {
LABEL_34:
    if ((v11 & 0x200000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_144;
  }

LABEL_143:
  toCopy[86] = *&self->_thirdPartyMsgNoonFri;
  toCopy[100] |= 0x100000uLL;
  v11 = *(&self->_has + 1);
  if ((v11 & 0x200000) == 0)
  {
LABEL_35:
    if ((v11 & 0x400000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_145;
  }

LABEL_144:
  toCopy[87] = *&self->_thirdPartyMsgNoonSat;
  toCopy[100] |= 0x200000uLL;
  v11 = *(&self->_has + 1);
  if ((v11 & 0x400000) == 0)
  {
LABEL_36:
    if ((v11 & 0x800) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_146;
  }

LABEL_145:
  toCopy[88] = *&self->_thirdPartyMsgNoonSun;
  toCopy[100] |= 0x400000uLL;
  v11 = *(&self->_has + 1);
  if ((v11 & 0x800) == 0)
  {
LABEL_37:
    if ((v11 & 0x100) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_147;
  }

LABEL_146:
  toCopy[77] = *&self->_thirdPartyMsgEveWeekday;
  toCopy[100] |= 0x800uLL;
  v11 = *(&self->_has + 1);
  if ((v11 & 0x100) == 0)
  {
LABEL_38:
    if ((v11 & 0x200) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_148;
  }

LABEL_147:
  toCopy[74] = *&self->_thirdPartyMsgEveFri;
  toCopy[100] |= 0x100uLL;
  v11 = *(&self->_has + 1);
  if ((v11 & 0x200) == 0)
  {
LABEL_39:
    if ((v11 & 0x400) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_149;
  }

LABEL_148:
  toCopy[75] = *&self->_thirdPartyMsgEveSat;
  toCopy[100] |= 0x200uLL;
  v11 = *(&self->_has + 1);
  if ((v11 & 0x400) == 0)
  {
LABEL_40:
    if ((v11 & 0x80000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_150;
  }

LABEL_149:
  toCopy[76] = *&self->_thirdPartyMsgEveSun;
  toCopy[100] |= 0x400uLL;
  v11 = *(&self->_has + 1);
  if ((v11 & 0x80000) == 0)
  {
LABEL_41:
    if ((v11 & 0x10000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_151;
  }

LABEL_150:
  toCopy[85] = *&self->_thirdPartyMsgNightWeekday;
  toCopy[100] |= 0x80000uLL;
  v11 = *(&self->_has + 1);
  if ((v11 & 0x10000) == 0)
  {
LABEL_42:
    if ((v11 & 0x20000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_152;
  }

LABEL_151:
  toCopy[82] = *&self->_thirdPartyMsgNightFri;
  toCopy[100] |= 0x10000uLL;
  v11 = *(&self->_has + 1);
  if ((v11 & 0x20000) == 0)
  {
LABEL_43:
    if ((v11 & 0x40000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

LABEL_152:
  toCopy[83] = *&self->_thirdPartyMsgNightSat;
  toCopy[100] |= 0x20000uLL;
  if ((*(&self->_has + 1) & 0x40000) != 0)
  {
LABEL_44:
    toCopy[84] = *&self->_thirdPartyMsgNightSun;
    toCopy[100] |= 0x40000uLL;
  }

LABEL_45:
  if ((*(&self->_has + 6) & 0x10) != 0)
  {
    toCopy[53] = self->_callTotal;
    toCopy[99] |= 0x10000000000000uLL;
  }

  v12 = *(&self->_has + 1);
  if ((v12 & 0x2000000) != 0)
  {
    *(toCopy + 182) = self->_callBirthday;
    toCopy[100] |= 0x2000000uLL;
    v12 = *(&self->_has + 1);
  }

  if ((v12 & 0x40000000) != 0)
  {
    *(toCopy + 187) = self->_contactFavorite;
    toCopy[100] |= 0x40000000uLL;
  }

  v13 = *p_has;
  if ((*p_has & 0x20000000000000) != 0)
  {
    toCopy[54] = *&self->_callTotalDur;
    toCopy[99] |= 0x20000000000000uLL;
    v13 = self->_has;
    if ((v13 & 0x2000000000) == 0)
    {
LABEL_53:
      if ((v13 & 0x8000000000000) == 0)
      {
        goto LABEL_54;
      }

      goto LABEL_156;
    }
  }

  else if ((v13 & 0x2000000000) == 0)
  {
    goto LABEL_53;
  }

  toCopy[38] = *&self->_callLongRatio;
  toCopy[99] |= 0x2000000000uLL;
  v13 = self->_has;
  if ((v13 & 0x8000000000000) == 0)
  {
LABEL_54:
    if ((v13 & 1) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_157;
  }

LABEL_156:
  toCopy[52] = *&self->_callOutgoingRatio;
  toCopy[99] |= 0x8000000000000uLL;
  v13 = self->_has;
  if ((v13 & 1) == 0)
  {
LABEL_55:
    if ((v13 & 0x4000000000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_158;
  }

LABEL_157:
  toCopy[1] = *&self->_callAvgDur;
  toCopy[99] |= 1uLL;
  v13 = self->_has;
  if ((v13 & 0x4000000000) == 0)
  {
LABEL_56:
    if ((v13 & 0x40000000000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_159;
  }

LABEL_158:
  toCopy[39] = *&self->_callMaxDur;
  toCopy[99] |= 0x4000000000uLL;
  v13 = self->_has;
  if ((v13 & 0x40000000000) == 0)
  {
LABEL_57:
    if ((v13 & 0x8000000000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_160;
  }

LABEL_159:
  toCopy[43] = *&self->_callMorningWeekday;
  toCopy[99] |= 0x40000000000uLL;
  v13 = self->_has;
  if ((v13 & 0x8000000000) == 0)
  {
LABEL_58:
    if ((v13 & 0x10000000000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_161;
  }

LABEL_160:
  toCopy[40] = *&self->_callMorningFri;
  toCopy[99] |= 0x8000000000uLL;
  v13 = self->_has;
  if ((v13 & 0x10000000000) == 0)
  {
LABEL_59:
    if ((v13 & 0x20000000000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_162;
  }

LABEL_161:
  toCopy[41] = *&self->_callMorningSat;
  toCopy[99] |= 0x10000000000uLL;
  v13 = self->_has;
  if ((v13 & 0x20000000000) == 0)
  {
LABEL_60:
    if ((v13 & 0x4000000000000) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_163;
  }

LABEL_162:
  toCopy[42] = *&self->_callMorningSun;
  toCopy[99] |= 0x20000000000uLL;
  v13 = self->_has;
  if ((v13 & 0x4000000000000) == 0)
  {
LABEL_61:
    if ((v13 & 0x800000000000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_164;
  }

LABEL_163:
  toCopy[51] = *&self->_callNoonWeekday;
  toCopy[99] |= 0x4000000000000uLL;
  v13 = self->_has;
  if ((v13 & 0x800000000000) == 0)
  {
LABEL_62:
    if ((v13 & 0x1000000000000) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_165;
  }

LABEL_164:
  toCopy[48] = *&self->_callNoonFri;
  toCopy[99] |= 0x800000000000uLL;
  v13 = self->_has;
  if ((v13 & 0x1000000000000) == 0)
  {
LABEL_63:
    if ((v13 & 0x2000000000000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_166;
  }

LABEL_165:
  toCopy[49] = *&self->_callNoonSat;
  toCopy[99] |= 0x1000000000000uLL;
  v13 = self->_has;
  if ((v13 & 0x2000000000000) == 0)
  {
LABEL_64:
    if ((v13 & 0x100000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_167;
  }

LABEL_166:
  toCopy[50] = *&self->_callNoonSun;
  toCopy[99] |= 0x2000000000000uLL;
  v13 = self->_has;
  if ((v13 & 0x100000) == 0)
  {
LABEL_65:
    if ((v13 & 0x20000) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_168;
  }

LABEL_167:
  toCopy[21] = *&self->_callEveWeekday;
  toCopy[99] |= 0x100000uLL;
  v13 = self->_has;
  if ((v13 & 0x20000) == 0)
  {
LABEL_66:
    if ((v13 & 0x40000) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_169;
  }

LABEL_168:
  toCopy[18] = *&self->_callEveFri;
  toCopy[99] |= 0x20000uLL;
  v13 = self->_has;
  if ((v13 & 0x40000) == 0)
  {
LABEL_67:
    if ((v13 & 0x80000) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_170;
  }

LABEL_169:
  toCopy[19] = *&self->_callEveSat;
  toCopy[99] |= 0x40000uLL;
  v13 = self->_has;
  if ((v13 & 0x80000) == 0)
  {
LABEL_68:
    if ((v13 & 0x400000000000) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_171;
  }

LABEL_170:
  toCopy[20] = *&self->_callEveSun;
  toCopy[99] |= 0x80000uLL;
  v13 = self->_has;
  if ((v13 & 0x400000000000) == 0)
  {
LABEL_69:
    if ((v13 & 0x80000000000) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_172;
  }

LABEL_171:
  toCopy[47] = *&self->_callNightWeekday;
  toCopy[99] |= 0x400000000000uLL;
  v13 = self->_has;
  if ((v13 & 0x80000000000) == 0)
  {
LABEL_70:
    if ((v13 & 0x100000000000) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_173;
  }

LABEL_172:
  toCopy[44] = *&self->_callNightFri;
  toCopy[99] |= 0x80000000000uLL;
  v13 = self->_has;
  if ((v13 & 0x100000000000) == 0)
  {
LABEL_71:
    if ((v13 & 0x200000000000) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_174;
  }

LABEL_173:
  toCopy[45] = *&self->_callNightSat;
  toCopy[99] |= 0x100000000000uLL;
  v13 = self->_has;
  if ((v13 & 0x200000000000) == 0)
  {
LABEL_72:
    if ((v13 & 0x100) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_175;
  }

LABEL_174:
  toCopy[46] = *&self->_callNightSun;
  toCopy[99] |= 0x200000000000uLL;
  v13 = self->_has;
  if ((v13 & 0x100) == 0)
  {
LABEL_73:
    if ((v13 & 0x20) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_176;
  }

LABEL_175:
  toCopy[9] = *&self->_callDurMorningWeekday;
  toCopy[99] |= 0x100uLL;
  v13 = self->_has;
  if ((v13 & 0x20) == 0)
  {
LABEL_74:
    if ((v13 & 0x40) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_177;
  }

LABEL_176:
  toCopy[6] = *&self->_callDurMorningFri;
  toCopy[99] |= 0x20uLL;
  v13 = self->_has;
  if ((v13 & 0x40) == 0)
  {
LABEL_75:
    if ((v13 & 0x80) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_178;
  }

LABEL_177:
  toCopy[7] = *&self->_callDurMorningSat;
  toCopy[99] |= 0x40uLL;
  v13 = self->_has;
  if ((v13 & 0x80) == 0)
  {
LABEL_76:
    if ((v13 & 0x10000) == 0)
    {
      goto LABEL_77;
    }

    goto LABEL_179;
  }

LABEL_178:
  toCopy[8] = *&self->_callDurMorningSun;
  toCopy[99] |= 0x80uLL;
  v13 = self->_has;
  if ((v13 & 0x10000) == 0)
  {
LABEL_77:
    if ((v13 & 0x2000) == 0)
    {
      goto LABEL_78;
    }

    goto LABEL_180;
  }

LABEL_179:
  toCopy[17] = *&self->_callDurNoonWeekday;
  toCopy[99] |= 0x10000uLL;
  v13 = self->_has;
  if ((v13 & 0x2000) == 0)
  {
LABEL_78:
    if ((v13 & 0x4000) == 0)
    {
      goto LABEL_79;
    }

    goto LABEL_181;
  }

LABEL_180:
  toCopy[14] = *&self->_callDurNoonFri;
  toCopy[99] |= 0x2000uLL;
  v13 = self->_has;
  if ((v13 & 0x4000) == 0)
  {
LABEL_79:
    if ((v13 & 0x8000) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_182;
  }

LABEL_181:
  toCopy[15] = *&self->_callDurNoonSat;
  toCopy[99] |= 0x4000uLL;
  v13 = self->_has;
  if ((v13 & 0x8000) == 0)
  {
LABEL_80:
    if ((v13 & 0x10) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_183;
  }

LABEL_182:
  toCopy[16] = *&self->_callDurNoonSun;
  toCopy[99] |= 0x8000uLL;
  v13 = self->_has;
  if ((v13 & 0x10) == 0)
  {
LABEL_81:
    if ((v13 & 2) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_184;
  }

LABEL_183:
  toCopy[5] = *&self->_callDurEveWeekday;
  toCopy[99] |= 0x10uLL;
  v13 = self->_has;
  if ((v13 & 2) == 0)
  {
LABEL_82:
    if ((v13 & 4) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_185;
  }

LABEL_184:
  toCopy[2] = *&self->_callDurEveFri;
  toCopy[99] |= 2uLL;
  v13 = self->_has;
  if ((v13 & 4) == 0)
  {
LABEL_83:
    if ((v13 & 8) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_186;
  }

LABEL_185:
  toCopy[3] = *&self->_callDurEveSat;
  toCopy[99] |= 4uLL;
  v13 = self->_has;
  if ((v13 & 8) == 0)
  {
LABEL_84:
    if ((v13 & 0x1000) == 0)
    {
      goto LABEL_85;
    }

    goto LABEL_187;
  }

LABEL_186:
  toCopy[4] = *&self->_callDurEveSun;
  toCopy[99] |= 8uLL;
  v13 = self->_has;
  if ((v13 & 0x1000) == 0)
  {
LABEL_85:
    if ((v13 & 0x200) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_188;
  }

LABEL_187:
  toCopy[13] = *&self->_callDurNightWeekday;
  toCopy[99] |= 0x1000uLL;
  v13 = self->_has;
  if ((v13 & 0x200) == 0)
  {
LABEL_86:
    if ((v13 & 0x400) == 0)
    {
      goto LABEL_87;
    }

    goto LABEL_189;
  }

LABEL_188:
  toCopy[10] = *&self->_callDurNightFri;
  toCopy[99] |= 0x200uLL;
  v13 = self->_has;
  if ((v13 & 0x400) == 0)
  {
LABEL_87:
    if ((v13 & 0x800) == 0)
    {
      goto LABEL_88;
    }

    goto LABEL_190;
  }

LABEL_189:
  toCopy[11] = *&self->_callDurNightSat;
  toCopy[99] |= 0x400uLL;
  v13 = self->_has;
  if ((v13 & 0x800) == 0)
  {
LABEL_88:
    if ((v13 & 0x10000000) == 0)
    {
      goto LABEL_89;
    }

    goto LABEL_191;
  }

LABEL_190:
  toCopy[12] = *&self->_callDurNightSun;
  toCopy[99] |= 0x800uLL;
  v13 = self->_has;
  if ((v13 & 0x10000000) == 0)
  {
LABEL_89:
    if ((v13 & 0x2000000) == 0)
    {
      goto LABEL_90;
    }

    goto LABEL_192;
  }

LABEL_191:
  toCopy[29] = *&self->_callLongMorningWeekday;
  toCopy[99] |= 0x10000000uLL;
  v13 = self->_has;
  if ((v13 & 0x2000000) == 0)
  {
LABEL_90:
    if ((v13 & 0x4000000) == 0)
    {
      goto LABEL_91;
    }

    goto LABEL_193;
  }

LABEL_192:
  toCopy[26] = *&self->_callLongMorningFri;
  toCopy[99] |= 0x2000000uLL;
  v13 = self->_has;
  if ((v13 & 0x4000000) == 0)
  {
LABEL_91:
    if ((v13 & 0x8000000) == 0)
    {
      goto LABEL_92;
    }

    goto LABEL_194;
  }

LABEL_193:
  toCopy[27] = *&self->_callLongMorningSat;
  toCopy[99] |= 0x4000000uLL;
  v13 = self->_has;
  if ((v13 & 0x8000000) == 0)
  {
LABEL_92:
    if ((v13 & 0x1000000000) == 0)
    {
      goto LABEL_93;
    }

    goto LABEL_195;
  }

LABEL_194:
  toCopy[28] = *&self->_callLongMorningSun;
  toCopy[99] |= 0x8000000uLL;
  v13 = self->_has;
  if ((v13 & 0x1000000000) == 0)
  {
LABEL_93:
    if ((v13 & 0x200000000) == 0)
    {
      goto LABEL_94;
    }

    goto LABEL_196;
  }

LABEL_195:
  toCopy[37] = *&self->_callLongNoonWeekday;
  toCopy[99] |= 0x1000000000uLL;
  v13 = self->_has;
  if ((v13 & 0x200000000) == 0)
  {
LABEL_94:
    if ((v13 & 0x400000000) == 0)
    {
      goto LABEL_95;
    }

    goto LABEL_197;
  }

LABEL_196:
  toCopy[34] = *&self->_callLongNoonFri;
  toCopy[99] |= 0x200000000uLL;
  v13 = self->_has;
  if ((v13 & 0x400000000) == 0)
  {
LABEL_95:
    if ((v13 & 0x800000000) == 0)
    {
      goto LABEL_96;
    }

    goto LABEL_198;
  }

LABEL_197:
  toCopy[35] = *&self->_callLongNoonSat;
  toCopy[99] |= 0x400000000uLL;
  v13 = self->_has;
  if ((v13 & 0x800000000) == 0)
  {
LABEL_96:
    if ((v13 & 0x1000000) == 0)
    {
      goto LABEL_97;
    }

    goto LABEL_199;
  }

LABEL_198:
  toCopy[36] = *&self->_callLongNoonSun;
  toCopy[99] |= 0x800000000uLL;
  v13 = self->_has;
  if ((v13 & 0x1000000) == 0)
  {
LABEL_97:
    if ((v13 & 0x200000) == 0)
    {
      goto LABEL_98;
    }

    goto LABEL_200;
  }

LABEL_199:
  toCopy[25] = *&self->_callLongEveWeekday;
  toCopy[99] |= 0x1000000uLL;
  v13 = self->_has;
  if ((v13 & 0x200000) == 0)
  {
LABEL_98:
    if ((v13 & 0x400000) == 0)
    {
      goto LABEL_99;
    }

    goto LABEL_201;
  }

LABEL_200:
  toCopy[22] = *&self->_callLongEveFri;
  toCopy[99] |= 0x200000uLL;
  v13 = self->_has;
  if ((v13 & 0x400000) == 0)
  {
LABEL_99:
    if ((v13 & 0x800000) == 0)
    {
      goto LABEL_100;
    }

    goto LABEL_202;
  }

LABEL_201:
  toCopy[23] = *&self->_callLongEveSat;
  toCopy[99] |= 0x400000uLL;
  v13 = self->_has;
  if ((v13 & 0x800000) == 0)
  {
LABEL_100:
    if ((v13 & 0x100000000) == 0)
    {
      goto LABEL_101;
    }

    goto LABEL_203;
  }

LABEL_202:
  toCopy[24] = *&self->_callLongEveSun;
  toCopy[99] |= 0x800000uLL;
  v13 = self->_has;
  if ((v13 & 0x100000000) == 0)
  {
LABEL_101:
    if ((v13 & 0x20000000) == 0)
    {
      goto LABEL_102;
    }

    goto LABEL_204;
  }

LABEL_203:
  toCopy[33] = *&self->_callLongNightWeekday;
  toCopy[99] |= 0x100000000uLL;
  v13 = self->_has;
  if ((v13 & 0x20000000) == 0)
  {
LABEL_102:
    if ((v13 & 0x40000000) == 0)
    {
      goto LABEL_103;
    }

    goto LABEL_205;
  }

LABEL_204:
  toCopy[30] = *&self->_callLongNightFri;
  toCopy[99] |= 0x20000000uLL;
  v13 = self->_has;
  if ((v13 & 0x40000000) == 0)
  {
LABEL_103:
    if ((v13 & 0x80000000) == 0)
    {
      goto LABEL_105;
    }

    goto LABEL_104;
  }

LABEL_205:
  toCopy[31] = *&self->_callLongNightSat;
  toCopy[99] |= 0x40000000uLL;
  if ((*&self->_has & 0x80000000) != 0)
  {
LABEL_104:
    toCopy[32] = *&self->_callLongNightSun;
    toCopy[99] |= 0x80000000uLL;
  }

LABEL_105:
  if ((*(&self->_has + 11) & 0x20) != 0)
  {
    *(toCopy + 186) = self->_contactFamilyRelation;
    toCopy[100] |= 0x20000000uLL;
  }

  if (self->_contactRelation)
  {
    v15 = toCopy;
    [toCopy setContactRelation:?];
    toCopy = v15;
  }

  v14 = *(&self->_has + 1);
  if ((v14 & 0x10000000) != 0)
  {
    *(toCopy + 185) = self->_contactFamilyName;
    toCopy[100] |= 0x10000000uLL;
    v14 = *(&self->_has + 1);
    if ((v14 & 0x4000000000) == 0)
    {
LABEL_111:
      if ((v14 & 0x4000000) == 0)
      {
        goto LABEL_112;
      }

      goto LABEL_209;
    }
  }

  else if ((v14 & 0x4000000000) == 0)
  {
    goto LABEL_111;
  }

  *(toCopy + 195) = self->_contactParent;
  toCopy[100] |= 0x4000000000uLL;
  v14 = *(&self->_has + 1);
  if ((v14 & 0x4000000) == 0)
  {
LABEL_112:
    if ((v14 & 0x8000000) == 0)
    {
      goto LABEL_113;
    }

    goto LABEL_210;
  }

LABEL_209:
  *(toCopy + 183) = self->_contactEmergency;
  toCopy[100] |= 0x4000000uLL;
  v14 = *(&self->_has + 1);
  if ((v14 & 0x8000000) == 0)
  {
LABEL_113:
    if ((v14 & 0x1000000000) == 0)
    {
      goto LABEL_114;
    }

    goto LABEL_211;
  }

LABEL_210:
  *(toCopy + 184) = self->_contactEmergencyFamily;
  toCopy[100] |= 0x8000000uLL;
  v14 = *(&self->_has + 1);
  if ((v14 & 0x1000000000) == 0)
  {
LABEL_114:
    if ((v14 & 0x2000000000) == 0)
    {
      goto LABEL_115;
    }

    goto LABEL_212;
  }

LABEL_211:
  *(toCopy + 193) = self->_contactInHome;
  toCopy[100] |= 0x1000000000uLL;
  v14 = *(&self->_has + 1);
  if ((v14 & 0x2000000000) == 0)
  {
LABEL_115:
    if ((v14 & 0x80000000) == 0)
    {
      goto LABEL_116;
    }

    goto LABEL_213;
  }

LABEL_212:
  *(toCopy + 194) = self->_contactInPhotos;
  toCopy[100] |= 0x2000000000uLL;
  v14 = *(&self->_has + 1);
  if ((v14 & 0x80000000) == 0)
  {
LABEL_116:
    if ((v14 & 0x100000000) == 0)
    {
      goto LABEL_117;
    }

    goto LABEL_214;
  }

LABEL_213:
  *(toCopy + 188) = self->_contactInAirDrop;
  toCopy[100] |= 0x80000000uLL;
  v14 = *(&self->_has + 1);
  if ((v14 & 0x100000000) == 0)
  {
LABEL_117:
    if ((v14 & 0x400000000) == 0)
    {
      goto LABEL_118;
    }

    goto LABEL_215;
  }

LABEL_214:
  *(toCopy + 189) = self->_contactInAirDropAtHome;
  toCopy[100] |= 0x100000000uLL;
  v14 = *(&self->_has + 1);
  if ((v14 & 0x400000000) == 0)
  {
LABEL_118:
    if ((v14 & 0x800000000) == 0)
    {
      goto LABEL_119;
    }

    goto LABEL_216;
  }

LABEL_215:
  *(toCopy + 191) = self->_contactInFMFFollowingMe;
  toCopy[100] |= 0x400000000uLL;
  v14 = *(&self->_has + 1);
  if ((v14 & 0x800000000) == 0)
  {
LABEL_119:
    if ((v14 & 0x200000000) == 0)
    {
      goto LABEL_121;
    }

    goto LABEL_120;
  }

LABEL_216:
  *(toCopy + 192) = self->_contactInFMFSharingWithMe;
  toCopy[100] |= 0x800000000uLL;
  if ((*(&self->_has + 1) & 0x200000000) != 0)
  {
LABEL_120:
    *(toCopy + 190) = self->_contactInFMFFavorite;
    toCopy[100] |= 0x200000000uLL;
  }

LABEL_121:
  toCopy[73] = self->_mailIntelligenceContactId;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  p_has = &self->_has;
  v8 = *(&self->_has + 1);
  if ((v8 & 0x80) != 0)
  {
    *(v5 + 576) = self->_firstPartyMsgTotal;
    *(v5 + 800) |= 0x80uLL;
    v8 = *(&self->_has + 1);
  }

  if ((v8 & 0x40) != 0)
  {
    *(v5 + 568) = self->_firstPartyMsgOutgoingRatio;
    *(v5 + 800) |= 0x40uLL;
  }

  has = *p_has;
  if ((*p_has & 0x2000000000000000) != 0)
  {
    *(v5 + 496) = self->_firstPartyMsgMorningWeekday;
    *(v5 + 792) |= 0x2000000000000000uLL;
    has = self->_has;
    if ((has & 0x400000000000000) == 0)
    {
LABEL_7:
      if ((has & 0x800000000000000) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_122;
    }
  }

  else if ((has & 0x400000000000000) == 0)
  {
    goto LABEL_7;
  }

  *(v5 + 472) = self->_firstPartyMsgMorningFri;
  *(v5 + 792) |= 0x400000000000000uLL;
  has = self->_has;
  if ((has & 0x800000000000000) == 0)
  {
LABEL_8:
    if ((has & 0x1000000000000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_122:
  *(v5 + 480) = self->_firstPartyMsgMorningSat;
  *(v5 + 792) |= 0x800000000000000uLL;
  if ((*&self->_has & 0x1000000000000000) != 0)
  {
LABEL_9:
    *(v5 + 488) = self->_firstPartyMsgMorningSun;
    *(v5 + 792) |= 0x1000000000000000uLL;
  }

LABEL_10:
  v10 = *(&self->_has + 1);
  if ((v10 & 0x20) != 0)
  {
    *(v5 + 560) = self->_firstPartyMsgNoonWeekday;
    *(v5 + 800) |= 0x20uLL;
    v10 = *(&self->_has + 1);
    if ((v10 & 4) == 0)
    {
LABEL_12:
      if ((v10 & 8) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_126;
    }
  }

  else if ((v10 & 4) == 0)
  {
    goto LABEL_12;
  }

  *(v5 + 536) = self->_firstPartyMsgNoonFri;
  *(v5 + 800) |= 4uLL;
  v10 = *(&self->_has + 1);
  if ((v10 & 8) == 0)
  {
LABEL_13:
    if ((v10 & 0x10) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_126:
  *(v5 + 544) = self->_firstPartyMsgNoonSat;
  *(v5 + 800) |= 8uLL;
  if ((*(&self->_has + 1) & 0x10) != 0)
  {
LABEL_14:
    *(v5 + 552) = self->_firstPartyMsgNoonSun;
    *(v5 + 800) |= 0x10uLL;
  }

LABEL_15:
  v11 = *p_has;
  if ((*p_has & 0x200000000000000) != 0)
  {
    *(v5 + 464) = self->_firstPartyMsgEveWeekday;
    *(v5 + 792) |= 0x200000000000000uLL;
    v11 = self->_has;
    if ((v11 & 0x40000000000000) == 0)
    {
LABEL_17:
      if ((v11 & 0x80000000000000) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_130;
    }
  }

  else if ((v11 & 0x40000000000000) == 0)
  {
    goto LABEL_17;
  }

  *(v5 + 440) = self->_firstPartyMsgEveFri;
  *(v5 + 792) |= 0x40000000000000uLL;
  v11 = self->_has;
  if ((v11 & 0x80000000000000) == 0)
  {
LABEL_18:
    if ((v11 & 0x100000000000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_130:
  *(v5 + 448) = self->_firstPartyMsgEveSat;
  *(v5 + 792) |= 0x80000000000000uLL;
  if ((*&self->_has & 0x100000000000000) != 0)
  {
LABEL_19:
    *(v5 + 456) = self->_firstPartyMsgEveSun;
    *(v5 + 792) |= 0x100000000000000uLL;
  }

LABEL_20:
  if ((*(&self->_has + 8) & 2) != 0)
  {
    *(v5 + 528) = self->_firstPartyMsgNightWeekday;
    *(v5 + 800) |= 2uLL;
  }

  v12 = *p_has;
  if ((*p_has & 0x4000000000000000) != 0)
  {
    *(v5 + 504) = self->_firstPartyMsgNightFri;
    *(v5 + 792) |= 0x4000000000000000uLL;
    v12 = self->_has;
  }

  if (v12 < 0)
  {
    *(v5 + 512) = self->_firstPartyMsgNightSat;
    *(v5 + 792) |= 0x8000000000000000;
  }

  v13 = *(&self->_has + 1);
  if (v13)
  {
    *(v5 + 520) = self->_firstPartyMsgNightSun;
    *(v5 + 800) |= 1uLL;
    v13 = *(&self->_has + 1);
    if ((v13 & 0x1000000) == 0)
    {
LABEL_28:
      if ((v13 & 0x8000) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_134;
    }
  }

  else if ((v13 & 0x1000000) == 0)
  {
    goto LABEL_28;
  }

  *(v5 + 720) = self->_thirdPartyMsgTotal;
  *(v5 + 800) |= 0x1000000uLL;
  v13 = *(&self->_has + 1);
  if ((v13 & 0x8000) == 0)
  {
LABEL_29:
    if ((v13 & 0x1000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_135;
  }

LABEL_134:
  *(v5 + 648) = self->_thirdPartyMsgMorningWeekday;
  *(v5 + 800) |= 0x8000uLL;
  v13 = *(&self->_has + 1);
  if ((v13 & 0x1000) == 0)
  {
LABEL_30:
    if ((v13 & 0x2000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_136;
  }

LABEL_135:
  *(v5 + 624) = self->_thirdPartyMsgMorningFri;
  *(v5 + 800) |= 0x1000uLL;
  v13 = *(&self->_has + 1);
  if ((v13 & 0x2000) == 0)
  {
LABEL_31:
    if ((v13 & 0x4000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_137;
  }

LABEL_136:
  *(v5 + 632) = self->_thirdPartyMsgMorningSat;
  *(v5 + 800) |= 0x2000uLL;
  v13 = *(&self->_has + 1);
  if ((v13 & 0x4000) == 0)
  {
LABEL_32:
    if ((v13 & 0x800000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_138;
  }

LABEL_137:
  *(v5 + 640) = self->_thirdPartyMsgMorningSun;
  *(v5 + 800) |= 0x4000uLL;
  v13 = *(&self->_has + 1);
  if ((v13 & 0x800000) == 0)
  {
LABEL_33:
    if ((v13 & 0x100000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_139;
  }

LABEL_138:
  *(v5 + 712) = self->_thirdPartyMsgNoonWeekday;
  *(v5 + 800) |= 0x800000uLL;
  v13 = *(&self->_has + 1);
  if ((v13 & 0x100000) == 0)
  {
LABEL_34:
    if ((v13 & 0x200000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_140;
  }

LABEL_139:
  *(v5 + 688) = self->_thirdPartyMsgNoonFri;
  *(v5 + 800) |= 0x100000uLL;
  v13 = *(&self->_has + 1);
  if ((v13 & 0x200000) == 0)
  {
LABEL_35:
    if ((v13 & 0x400000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_141;
  }

LABEL_140:
  *(v5 + 696) = self->_thirdPartyMsgNoonSat;
  *(v5 + 800) |= 0x200000uLL;
  v13 = *(&self->_has + 1);
  if ((v13 & 0x400000) == 0)
  {
LABEL_36:
    if ((v13 & 0x800) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_142;
  }

LABEL_141:
  *(v5 + 704) = self->_thirdPartyMsgNoonSun;
  *(v5 + 800) |= 0x400000uLL;
  v13 = *(&self->_has + 1);
  if ((v13 & 0x800) == 0)
  {
LABEL_37:
    if ((v13 & 0x100) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_143;
  }

LABEL_142:
  *(v5 + 616) = self->_thirdPartyMsgEveWeekday;
  *(v5 + 800) |= 0x800uLL;
  v13 = *(&self->_has + 1);
  if ((v13 & 0x100) == 0)
  {
LABEL_38:
    if ((v13 & 0x200) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_144;
  }

LABEL_143:
  *(v5 + 592) = self->_thirdPartyMsgEveFri;
  *(v5 + 800) |= 0x100uLL;
  v13 = *(&self->_has + 1);
  if ((v13 & 0x200) == 0)
  {
LABEL_39:
    if ((v13 & 0x400) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_145;
  }

LABEL_144:
  *(v5 + 600) = self->_thirdPartyMsgEveSat;
  *(v5 + 800) |= 0x200uLL;
  v13 = *(&self->_has + 1);
  if ((v13 & 0x400) == 0)
  {
LABEL_40:
    if ((v13 & 0x80000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_146;
  }

LABEL_145:
  *(v5 + 608) = self->_thirdPartyMsgEveSun;
  *(v5 + 800) |= 0x400uLL;
  v13 = *(&self->_has + 1);
  if ((v13 & 0x80000) == 0)
  {
LABEL_41:
    if ((v13 & 0x10000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_147;
  }

LABEL_146:
  *(v5 + 680) = self->_thirdPartyMsgNightWeekday;
  *(v5 + 800) |= 0x80000uLL;
  v13 = *(&self->_has + 1);
  if ((v13 & 0x10000) == 0)
  {
LABEL_42:
    if ((v13 & 0x20000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_148;
  }

LABEL_147:
  *(v5 + 656) = self->_thirdPartyMsgNightFri;
  *(v5 + 800) |= 0x10000uLL;
  v13 = *(&self->_has + 1);
  if ((v13 & 0x20000) == 0)
  {
LABEL_43:
    if ((v13 & 0x40000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

LABEL_148:
  *(v5 + 664) = self->_thirdPartyMsgNightSat;
  *(v5 + 800) |= 0x20000uLL;
  if ((*(&self->_has + 1) & 0x40000) != 0)
  {
LABEL_44:
    *(v5 + 672) = self->_thirdPartyMsgNightSun;
    *(v5 + 800) |= 0x40000uLL;
  }

LABEL_45:
  if ((*(&self->_has + 6) & 0x10) != 0)
  {
    *(v5 + 424) = self->_callTotal;
    *(v5 + 792) |= 0x10000000000000uLL;
  }

  v14 = *(&self->_has + 1);
  if ((v14 & 0x2000000) != 0)
  {
    *(v5 + 728) = self->_callBirthday;
    *(v5 + 800) |= 0x2000000uLL;
    v14 = *(&self->_has + 1);
  }

  if ((v14 & 0x40000000) != 0)
  {
    *(v5 + 748) = self->_contactFavorite;
    *(v5 + 800) |= 0x40000000uLL;
  }

  v15 = *p_has;
  if ((*p_has & 0x20000000000000) != 0)
  {
    *(v5 + 432) = self->_callTotalDur;
    *(v5 + 792) |= 0x20000000000000uLL;
    v15 = self->_has;
    if ((v15 & 0x2000000000) == 0)
    {
LABEL_53:
      if ((v15 & 0x8000000000000) == 0)
      {
        goto LABEL_54;
      }

      goto LABEL_152;
    }
  }

  else if ((v15 & 0x2000000000) == 0)
  {
    goto LABEL_53;
  }

  *(v5 + 304) = self->_callLongRatio;
  *(v5 + 792) |= 0x2000000000uLL;
  v15 = self->_has;
  if ((v15 & 0x8000000000000) == 0)
  {
LABEL_54:
    if ((v15 & 1) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_153;
  }

LABEL_152:
  *(v5 + 416) = self->_callOutgoingRatio;
  *(v5 + 792) |= 0x8000000000000uLL;
  v15 = self->_has;
  if ((v15 & 1) == 0)
  {
LABEL_55:
    if ((v15 & 0x4000000000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_154;
  }

LABEL_153:
  *(v5 + 8) = self->_callAvgDur;
  *(v5 + 792) |= 1uLL;
  v15 = self->_has;
  if ((v15 & 0x4000000000) == 0)
  {
LABEL_56:
    if ((v15 & 0x40000000000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_155;
  }

LABEL_154:
  *(v5 + 312) = self->_callMaxDur;
  *(v5 + 792) |= 0x4000000000uLL;
  v15 = self->_has;
  if ((v15 & 0x40000000000) == 0)
  {
LABEL_57:
    if ((v15 & 0x8000000000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_156;
  }

LABEL_155:
  *(v5 + 344) = self->_callMorningWeekday;
  *(v5 + 792) |= 0x40000000000uLL;
  v15 = self->_has;
  if ((v15 & 0x8000000000) == 0)
  {
LABEL_58:
    if ((v15 & 0x10000000000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_157;
  }

LABEL_156:
  *(v5 + 320) = self->_callMorningFri;
  *(v5 + 792) |= 0x8000000000uLL;
  v15 = self->_has;
  if ((v15 & 0x10000000000) == 0)
  {
LABEL_59:
    if ((v15 & 0x20000000000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_158;
  }

LABEL_157:
  *(v5 + 328) = self->_callMorningSat;
  *(v5 + 792) |= 0x10000000000uLL;
  v15 = self->_has;
  if ((v15 & 0x20000000000) == 0)
  {
LABEL_60:
    if ((v15 & 0x4000000000000) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_159;
  }

LABEL_158:
  *(v5 + 336) = self->_callMorningSun;
  *(v5 + 792) |= 0x20000000000uLL;
  v15 = self->_has;
  if ((v15 & 0x4000000000000) == 0)
  {
LABEL_61:
    if ((v15 & 0x800000000000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_160;
  }

LABEL_159:
  *(v5 + 408) = self->_callNoonWeekday;
  *(v5 + 792) |= 0x4000000000000uLL;
  v15 = self->_has;
  if ((v15 & 0x800000000000) == 0)
  {
LABEL_62:
    if ((v15 & 0x1000000000000) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_161;
  }

LABEL_160:
  *(v5 + 384) = self->_callNoonFri;
  *(v5 + 792) |= 0x800000000000uLL;
  v15 = self->_has;
  if ((v15 & 0x1000000000000) == 0)
  {
LABEL_63:
    if ((v15 & 0x2000000000000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_162;
  }

LABEL_161:
  *(v5 + 392) = self->_callNoonSat;
  *(v5 + 792) |= 0x1000000000000uLL;
  v15 = self->_has;
  if ((v15 & 0x2000000000000) == 0)
  {
LABEL_64:
    if ((v15 & 0x100000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_163;
  }

LABEL_162:
  *(v5 + 400) = self->_callNoonSun;
  *(v5 + 792) |= 0x2000000000000uLL;
  v15 = self->_has;
  if ((v15 & 0x100000) == 0)
  {
LABEL_65:
    if ((v15 & 0x20000) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_164;
  }

LABEL_163:
  *(v5 + 168) = self->_callEveWeekday;
  *(v5 + 792) |= 0x100000uLL;
  v15 = self->_has;
  if ((v15 & 0x20000) == 0)
  {
LABEL_66:
    if ((v15 & 0x40000) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_165;
  }

LABEL_164:
  *(v5 + 144) = self->_callEveFri;
  *(v5 + 792) |= 0x20000uLL;
  v15 = self->_has;
  if ((v15 & 0x40000) == 0)
  {
LABEL_67:
    if ((v15 & 0x80000) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_166;
  }

LABEL_165:
  *(v5 + 152) = self->_callEveSat;
  *(v5 + 792) |= 0x40000uLL;
  v15 = self->_has;
  if ((v15 & 0x80000) == 0)
  {
LABEL_68:
    if ((v15 & 0x400000000000) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_167;
  }

LABEL_166:
  *(v5 + 160) = self->_callEveSun;
  *(v5 + 792) |= 0x80000uLL;
  v15 = self->_has;
  if ((v15 & 0x400000000000) == 0)
  {
LABEL_69:
    if ((v15 & 0x80000000000) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_168;
  }

LABEL_167:
  *(v5 + 376) = self->_callNightWeekday;
  *(v5 + 792) |= 0x400000000000uLL;
  v15 = self->_has;
  if ((v15 & 0x80000000000) == 0)
  {
LABEL_70:
    if ((v15 & 0x100000000000) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_169;
  }

LABEL_168:
  *(v5 + 352) = self->_callNightFri;
  *(v5 + 792) |= 0x80000000000uLL;
  v15 = self->_has;
  if ((v15 & 0x100000000000) == 0)
  {
LABEL_71:
    if ((v15 & 0x200000000000) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_170;
  }

LABEL_169:
  *(v5 + 360) = self->_callNightSat;
  *(v5 + 792) |= 0x100000000000uLL;
  v15 = self->_has;
  if ((v15 & 0x200000000000) == 0)
  {
LABEL_72:
    if ((v15 & 0x100) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_171;
  }

LABEL_170:
  *(v5 + 368) = self->_callNightSun;
  *(v5 + 792) |= 0x200000000000uLL;
  v15 = self->_has;
  if ((v15 & 0x100) == 0)
  {
LABEL_73:
    if ((v15 & 0x20) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_172;
  }

LABEL_171:
  *(v5 + 72) = self->_callDurMorningWeekday;
  *(v5 + 792) |= 0x100uLL;
  v15 = self->_has;
  if ((v15 & 0x20) == 0)
  {
LABEL_74:
    if ((v15 & 0x40) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_173;
  }

LABEL_172:
  *(v5 + 48) = self->_callDurMorningFri;
  *(v5 + 792) |= 0x20uLL;
  v15 = self->_has;
  if ((v15 & 0x40) == 0)
  {
LABEL_75:
    if ((v15 & 0x80) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_174;
  }

LABEL_173:
  *(v5 + 56) = self->_callDurMorningSat;
  *(v5 + 792) |= 0x40uLL;
  v15 = self->_has;
  if ((v15 & 0x80) == 0)
  {
LABEL_76:
    if ((v15 & 0x10000) == 0)
    {
      goto LABEL_77;
    }

    goto LABEL_175;
  }

LABEL_174:
  *(v5 + 64) = self->_callDurMorningSun;
  *(v5 + 792) |= 0x80uLL;
  v15 = self->_has;
  if ((v15 & 0x10000) == 0)
  {
LABEL_77:
    if ((v15 & 0x2000) == 0)
    {
      goto LABEL_78;
    }

    goto LABEL_176;
  }

LABEL_175:
  *(v5 + 136) = self->_callDurNoonWeekday;
  *(v5 + 792) |= 0x10000uLL;
  v15 = self->_has;
  if ((v15 & 0x2000) == 0)
  {
LABEL_78:
    if ((v15 & 0x4000) == 0)
    {
      goto LABEL_79;
    }

    goto LABEL_177;
  }

LABEL_176:
  *(v5 + 112) = self->_callDurNoonFri;
  *(v5 + 792) |= 0x2000uLL;
  v15 = self->_has;
  if ((v15 & 0x4000) == 0)
  {
LABEL_79:
    if ((v15 & 0x8000) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_178;
  }

LABEL_177:
  *(v5 + 120) = self->_callDurNoonSat;
  *(v5 + 792) |= 0x4000uLL;
  v15 = self->_has;
  if ((v15 & 0x8000) == 0)
  {
LABEL_80:
    if ((v15 & 0x10) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_179;
  }

LABEL_178:
  *(v5 + 128) = self->_callDurNoonSun;
  *(v5 + 792) |= 0x8000uLL;
  v15 = self->_has;
  if ((v15 & 0x10) == 0)
  {
LABEL_81:
    if ((v15 & 2) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_180;
  }

LABEL_179:
  *(v5 + 40) = self->_callDurEveWeekday;
  *(v5 + 792) |= 0x10uLL;
  v15 = self->_has;
  if ((v15 & 2) == 0)
  {
LABEL_82:
    if ((v15 & 4) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_181;
  }

LABEL_180:
  *(v5 + 16) = self->_callDurEveFri;
  *(v5 + 792) |= 2uLL;
  v15 = self->_has;
  if ((v15 & 4) == 0)
  {
LABEL_83:
    if ((v15 & 8) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_182;
  }

LABEL_181:
  *(v5 + 24) = self->_callDurEveSat;
  *(v5 + 792) |= 4uLL;
  v15 = self->_has;
  if ((v15 & 8) == 0)
  {
LABEL_84:
    if ((v15 & 0x1000) == 0)
    {
      goto LABEL_85;
    }

    goto LABEL_183;
  }

LABEL_182:
  *(v5 + 32) = self->_callDurEveSun;
  *(v5 + 792) |= 8uLL;
  v15 = self->_has;
  if ((v15 & 0x1000) == 0)
  {
LABEL_85:
    if ((v15 & 0x200) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_184;
  }

LABEL_183:
  *(v5 + 104) = self->_callDurNightWeekday;
  *(v5 + 792) |= 0x1000uLL;
  v15 = self->_has;
  if ((v15 & 0x200) == 0)
  {
LABEL_86:
    if ((v15 & 0x400) == 0)
    {
      goto LABEL_87;
    }

    goto LABEL_185;
  }

LABEL_184:
  *(v5 + 80) = self->_callDurNightFri;
  *(v5 + 792) |= 0x200uLL;
  v15 = self->_has;
  if ((v15 & 0x400) == 0)
  {
LABEL_87:
    if ((v15 & 0x800) == 0)
    {
      goto LABEL_88;
    }

    goto LABEL_186;
  }

LABEL_185:
  *(v5 + 88) = self->_callDurNightSat;
  *(v5 + 792) |= 0x400uLL;
  v15 = self->_has;
  if ((v15 & 0x800) == 0)
  {
LABEL_88:
    if ((v15 & 0x10000000) == 0)
    {
      goto LABEL_89;
    }

    goto LABEL_187;
  }

LABEL_186:
  *(v5 + 96) = self->_callDurNightSun;
  *(v5 + 792) |= 0x800uLL;
  v15 = self->_has;
  if ((v15 & 0x10000000) == 0)
  {
LABEL_89:
    if ((v15 & 0x2000000) == 0)
    {
      goto LABEL_90;
    }

    goto LABEL_188;
  }

LABEL_187:
  *(v5 + 232) = self->_callLongMorningWeekday;
  *(v5 + 792) |= 0x10000000uLL;
  v15 = self->_has;
  if ((v15 & 0x2000000) == 0)
  {
LABEL_90:
    if ((v15 & 0x4000000) == 0)
    {
      goto LABEL_91;
    }

    goto LABEL_189;
  }

LABEL_188:
  *(v5 + 208) = self->_callLongMorningFri;
  *(v5 + 792) |= 0x2000000uLL;
  v15 = self->_has;
  if ((v15 & 0x4000000) == 0)
  {
LABEL_91:
    if ((v15 & 0x8000000) == 0)
    {
      goto LABEL_92;
    }

    goto LABEL_190;
  }

LABEL_189:
  *(v5 + 216) = self->_callLongMorningSat;
  *(v5 + 792) |= 0x4000000uLL;
  v15 = self->_has;
  if ((v15 & 0x8000000) == 0)
  {
LABEL_92:
    if ((v15 & 0x1000000000) == 0)
    {
      goto LABEL_93;
    }

    goto LABEL_191;
  }

LABEL_190:
  *(v5 + 224) = self->_callLongMorningSun;
  *(v5 + 792) |= 0x8000000uLL;
  v15 = self->_has;
  if ((v15 & 0x1000000000) == 0)
  {
LABEL_93:
    if ((v15 & 0x200000000) == 0)
    {
      goto LABEL_94;
    }

    goto LABEL_192;
  }

LABEL_191:
  *(v5 + 296) = self->_callLongNoonWeekday;
  *(v5 + 792) |= 0x1000000000uLL;
  v15 = self->_has;
  if ((v15 & 0x200000000) == 0)
  {
LABEL_94:
    if ((v15 & 0x400000000) == 0)
    {
      goto LABEL_95;
    }

    goto LABEL_193;
  }

LABEL_192:
  *(v5 + 272) = self->_callLongNoonFri;
  *(v5 + 792) |= 0x200000000uLL;
  v15 = self->_has;
  if ((v15 & 0x400000000) == 0)
  {
LABEL_95:
    if ((v15 & 0x800000000) == 0)
    {
      goto LABEL_96;
    }

    goto LABEL_194;
  }

LABEL_193:
  *(v5 + 280) = self->_callLongNoonSat;
  *(v5 + 792) |= 0x400000000uLL;
  v15 = self->_has;
  if ((v15 & 0x800000000) == 0)
  {
LABEL_96:
    if ((v15 & 0x1000000) == 0)
    {
      goto LABEL_97;
    }

    goto LABEL_195;
  }

LABEL_194:
  *(v5 + 288) = self->_callLongNoonSun;
  *(v5 + 792) |= 0x800000000uLL;
  v15 = self->_has;
  if ((v15 & 0x1000000) == 0)
  {
LABEL_97:
    if ((v15 & 0x200000) == 0)
    {
      goto LABEL_98;
    }

    goto LABEL_196;
  }

LABEL_195:
  *(v5 + 200) = self->_callLongEveWeekday;
  *(v5 + 792) |= 0x1000000uLL;
  v15 = self->_has;
  if ((v15 & 0x200000) == 0)
  {
LABEL_98:
    if ((v15 & 0x400000) == 0)
    {
      goto LABEL_99;
    }

    goto LABEL_197;
  }

LABEL_196:
  *(v5 + 176) = self->_callLongEveFri;
  *(v5 + 792) |= 0x200000uLL;
  v15 = self->_has;
  if ((v15 & 0x400000) == 0)
  {
LABEL_99:
    if ((v15 & 0x800000) == 0)
    {
      goto LABEL_100;
    }

    goto LABEL_198;
  }

LABEL_197:
  *(v5 + 184) = self->_callLongEveSat;
  *(v5 + 792) |= 0x400000uLL;
  v15 = self->_has;
  if ((v15 & 0x800000) == 0)
  {
LABEL_100:
    if ((v15 & 0x100000000) == 0)
    {
      goto LABEL_101;
    }

    goto LABEL_199;
  }

LABEL_198:
  *(v5 + 192) = self->_callLongEveSun;
  *(v5 + 792) |= 0x800000uLL;
  v15 = self->_has;
  if ((v15 & 0x100000000) == 0)
  {
LABEL_101:
    if ((v15 & 0x20000000) == 0)
    {
      goto LABEL_102;
    }

    goto LABEL_200;
  }

LABEL_199:
  *(v5 + 264) = self->_callLongNightWeekday;
  *(v5 + 792) |= 0x100000000uLL;
  v15 = self->_has;
  if ((v15 & 0x20000000) == 0)
  {
LABEL_102:
    if ((v15 & 0x40000000) == 0)
    {
      goto LABEL_103;
    }

    goto LABEL_201;
  }

LABEL_200:
  *(v5 + 240) = self->_callLongNightFri;
  *(v5 + 792) |= 0x20000000uLL;
  v15 = self->_has;
  if ((v15 & 0x40000000) == 0)
  {
LABEL_103:
    if ((v15 & 0x80000000) == 0)
    {
      goto LABEL_105;
    }

    goto LABEL_104;
  }

LABEL_201:
  *(v5 + 248) = self->_callLongNightSat;
  *(v5 + 792) |= 0x40000000uLL;
  if ((*&self->_has & 0x80000000) != 0)
  {
LABEL_104:
    *(v5 + 256) = self->_callLongNightSun;
    *(v5 + 792) |= 0x80000000uLL;
  }

LABEL_105:
  if ((*(&self->_has + 11) & 0x20) != 0)
  {
    *(v5 + 744) = self->_contactFamilyRelation;
    *(v5 + 800) |= 0x20000000uLL;
  }

  v16 = [(NSString *)self->_contactRelation copyWithZone:zone];
  v17 = *(v6 + 784);
  *(v6 + 784) = v16;

  v18 = *(&self->_has + 1);
  if ((v18 & 0x10000000) != 0)
  {
    *(v6 + 740) = self->_contactFamilyName;
    *(v6 + 800) |= 0x10000000uLL;
    v18 = *(&self->_has + 1);
    if ((v18 & 0x4000000000) == 0)
    {
LABEL_109:
      if ((v18 & 0x4000000) == 0)
      {
        goto LABEL_110;
      }

      goto LABEL_205;
    }
  }

  else if ((v18 & 0x4000000000) == 0)
  {
    goto LABEL_109;
  }

  *(v6 + 780) = self->_contactParent;
  *(v6 + 800) |= 0x4000000000uLL;
  v18 = *(&self->_has + 1);
  if ((v18 & 0x4000000) == 0)
  {
LABEL_110:
    if ((v18 & 0x8000000) == 0)
    {
      goto LABEL_111;
    }

    goto LABEL_206;
  }

LABEL_205:
  *(v6 + 732) = self->_contactEmergency;
  *(v6 + 800) |= 0x4000000uLL;
  v18 = *(&self->_has + 1);
  if ((v18 & 0x8000000) == 0)
  {
LABEL_111:
    if ((v18 & 0x1000000000) == 0)
    {
      goto LABEL_112;
    }

    goto LABEL_207;
  }

LABEL_206:
  *(v6 + 736) = self->_contactEmergencyFamily;
  *(v6 + 800) |= 0x8000000uLL;
  v18 = *(&self->_has + 1);
  if ((v18 & 0x1000000000) == 0)
  {
LABEL_112:
    if ((v18 & 0x2000000000) == 0)
    {
      goto LABEL_113;
    }

    goto LABEL_208;
  }

LABEL_207:
  *(v6 + 772) = self->_contactInHome;
  *(v6 + 800) |= 0x1000000000uLL;
  v18 = *(&self->_has + 1);
  if ((v18 & 0x2000000000) == 0)
  {
LABEL_113:
    if ((v18 & 0x80000000) == 0)
    {
      goto LABEL_114;
    }

    goto LABEL_209;
  }

LABEL_208:
  *(v6 + 776) = self->_contactInPhotos;
  *(v6 + 800) |= 0x2000000000uLL;
  v18 = *(&self->_has + 1);
  if ((v18 & 0x80000000) == 0)
  {
LABEL_114:
    if ((v18 & 0x100000000) == 0)
    {
      goto LABEL_115;
    }

    goto LABEL_210;
  }

LABEL_209:
  *(v6 + 752) = self->_contactInAirDrop;
  *(v6 + 800) |= 0x80000000uLL;
  v18 = *(&self->_has + 1);
  if ((v18 & 0x100000000) == 0)
  {
LABEL_115:
    if ((v18 & 0x400000000) == 0)
    {
      goto LABEL_116;
    }

    goto LABEL_211;
  }

LABEL_210:
  *(v6 + 756) = self->_contactInAirDropAtHome;
  *(v6 + 800) |= 0x100000000uLL;
  v18 = *(&self->_has + 1);
  if ((v18 & 0x400000000) == 0)
  {
LABEL_116:
    if ((v18 & 0x800000000) == 0)
    {
      goto LABEL_117;
    }

LABEL_212:
    *(v6 + 768) = self->_contactInFMFSharingWithMe;
    *(v6 + 800) |= 0x800000000uLL;
    if ((*(&self->_has + 1) & 0x200000000) == 0)
    {
      goto LABEL_119;
    }

    goto LABEL_118;
  }

LABEL_211:
  *(v6 + 764) = self->_contactInFMFFollowingMe;
  *(v6 + 800) |= 0x400000000uLL;
  v18 = *(&self->_has + 1);
  if ((v18 & 0x800000000) != 0)
  {
    goto LABEL_212;
  }

LABEL_117:
  if ((v18 & 0x200000000) != 0)
  {
LABEL_118:
    *(v6 + 760) = self->_contactInFMFFavorite;
    *(v6 + 800) |= 0x200000000uLL;
  }

LABEL_119:
  *(v6 + 584) = self->_mailIntelligenceContactId;
  v19 = v6;

  return v19;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_520;
  }

  p_has = &self->_has;
  v6 = *(&self->_has + 1);
  v7 = *(equalCopy + 100);
  if ((v6 & 0x80) != 0)
  {
    if ((v7 & 0x80) == 0 || self->_firstPartyMsgTotal != *(equalCopy + 72))
    {
      goto LABEL_520;
    }
  }

  else if ((v7 & 0x80) != 0)
  {
    goto LABEL_520;
  }

  if ((v6 & 0x40) != 0)
  {
    if ((v7 & 0x40) == 0 || self->_firstPartyMsgOutgoingRatio != *(equalCopy + 71))
    {
      goto LABEL_520;
    }
  }

  else if ((v7 & 0x40) != 0)
  {
    goto LABEL_520;
  }

  v8 = *p_has;
  v9 = *(equalCopy + 99);
  if ((*p_has & 0x2000000000000000) != 0)
  {
    if ((v9 & 0x2000000000000000) == 0 || self->_firstPartyMsgMorningWeekday != *(equalCopy + 62))
    {
      goto LABEL_520;
    }
  }

  else if ((v9 & 0x2000000000000000) != 0)
  {
    goto LABEL_520;
  }

  if ((v8 & 0x400000000000000) != 0)
  {
    if ((v9 & 0x400000000000000) == 0 || self->_firstPartyMsgMorningFri != *(equalCopy + 59))
    {
      goto LABEL_520;
    }
  }

  else if ((v9 & 0x400000000000000) != 0)
  {
    goto LABEL_520;
  }

  if ((v8 & 0x800000000000000) != 0)
  {
    if ((v9 & 0x800000000000000) == 0 || self->_firstPartyMsgMorningSat != *(equalCopy + 60))
    {
      goto LABEL_520;
    }
  }

  else if ((v9 & 0x800000000000000) != 0)
  {
    goto LABEL_520;
  }

  if ((v8 & 0x1000000000000000) != 0)
  {
    if ((v9 & 0x1000000000000000) == 0 || self->_firstPartyMsgMorningSun != *(equalCopy + 61))
    {
      goto LABEL_520;
    }
  }

  else if ((v9 & 0x1000000000000000) != 0)
  {
    goto LABEL_520;
  }

  if ((v6 & 0x20) != 0)
  {
    if ((v7 & 0x20) == 0 || self->_firstPartyMsgNoonWeekday != *(equalCopy + 70))
    {
      goto LABEL_520;
    }
  }

  else if ((v7 & 0x20) != 0)
  {
    goto LABEL_520;
  }

  if ((v6 & 4) != 0)
  {
    if ((v7 & 4) == 0 || self->_firstPartyMsgNoonFri != *(equalCopy + 67))
    {
      goto LABEL_520;
    }
  }

  else if ((v7 & 4) != 0)
  {
    goto LABEL_520;
  }

  if ((v6 & 8) != 0)
  {
    if ((v7 & 8) == 0 || self->_firstPartyMsgNoonSat != *(equalCopy + 68))
    {
      goto LABEL_520;
    }
  }

  else if ((v7 & 8) != 0)
  {
    goto LABEL_520;
  }

  if ((v6 & 0x10) != 0)
  {
    if ((v7 & 0x10) == 0 || self->_firstPartyMsgNoonSun != *(equalCopy + 69))
    {
      goto LABEL_520;
    }
  }

  else if ((v7 & 0x10) != 0)
  {
    goto LABEL_520;
  }

  if ((v8 & 0x200000000000000) != 0)
  {
    if ((v9 & 0x200000000000000) == 0 || self->_firstPartyMsgEveWeekday != *(equalCopy + 58))
    {
      goto LABEL_520;
    }
  }

  else if ((v9 & 0x200000000000000) != 0)
  {
    goto LABEL_520;
  }

  if ((v8 & 0x40000000000000) != 0)
  {
    if ((v9 & 0x40000000000000) == 0 || self->_firstPartyMsgEveFri != *(equalCopy + 55))
    {
      goto LABEL_520;
    }
  }

  else if ((v9 & 0x40000000000000) != 0)
  {
    goto LABEL_520;
  }

  if ((v8 & 0x80000000000000) != 0)
  {
    if ((v9 & 0x80000000000000) == 0 || self->_firstPartyMsgEveSat != *(equalCopy + 56))
    {
      goto LABEL_520;
    }
  }

  else if ((v9 & 0x80000000000000) != 0)
  {
    goto LABEL_520;
  }

  if ((v8 & 0x100000000000000) != 0)
  {
    if ((v9 & 0x100000000000000) == 0 || self->_firstPartyMsgEveSun != *(equalCopy + 57))
    {
      goto LABEL_520;
    }
  }

  else if ((v9 & 0x100000000000000) != 0)
  {
    goto LABEL_520;
  }

  if ((v6 & 2) != 0)
  {
    if ((v7 & 2) == 0 || self->_firstPartyMsgNightWeekday != *(equalCopy + 66))
    {
      goto LABEL_520;
    }
  }

  else if ((v7 & 2) != 0)
  {
    goto LABEL_520;
  }

  if ((v8 & 0x4000000000000000) != 0)
  {
    if ((v9 & 0x4000000000000000) == 0 || self->_firstPartyMsgNightFri != *(equalCopy + 63))
    {
      goto LABEL_520;
    }
  }

  else if ((v9 & 0x4000000000000000) != 0)
  {
    goto LABEL_520;
  }

  if (v8 < 0)
  {
    if ((v9 & 0x8000000000000000) == 0 || self->_firstPartyMsgNightSat != *(equalCopy + 64))
    {
      goto LABEL_520;
    }
  }

  else if (v9 < 0)
  {
    goto LABEL_520;
  }

  if (v6)
  {
    if ((v7 & 1) == 0 || self->_firstPartyMsgNightSun != *(equalCopy + 65))
    {
      goto LABEL_520;
    }
  }

  else if (v7)
  {
    goto LABEL_520;
  }

  if ((v6 & 0x1000000) != 0)
  {
    if ((v7 & 0x1000000) == 0 || self->_thirdPartyMsgTotal != *(equalCopy + 90))
    {
      goto LABEL_520;
    }
  }

  else if ((v7 & 0x1000000) != 0)
  {
    goto LABEL_520;
  }

  if ((v6 & 0x8000) != 0)
  {
    if ((v7 & 0x8000) == 0 || self->_thirdPartyMsgMorningWeekday != *(equalCopy + 81))
    {
      goto LABEL_520;
    }
  }

  else if ((v7 & 0x8000) != 0)
  {
    goto LABEL_520;
  }

  if ((v6 & 0x1000) != 0)
  {
    if ((v7 & 0x1000) == 0 || self->_thirdPartyMsgMorningFri != *(equalCopy + 78))
    {
      goto LABEL_520;
    }
  }

  else if ((v7 & 0x1000) != 0)
  {
    goto LABEL_520;
  }

  if ((v6 & 0x2000) != 0)
  {
    if ((v7 & 0x2000) == 0 || self->_thirdPartyMsgMorningSat != *(equalCopy + 79))
    {
      goto LABEL_520;
    }
  }

  else if ((v7 & 0x2000) != 0)
  {
    goto LABEL_520;
  }

  if ((v6 & 0x4000) != 0)
  {
    if ((v7 & 0x4000) == 0 || self->_thirdPartyMsgMorningSun != *(equalCopy + 80))
    {
      goto LABEL_520;
    }
  }

  else if ((v7 & 0x4000) != 0)
  {
    goto LABEL_520;
  }

  if ((v6 & 0x800000) != 0)
  {
    if ((v7 & 0x800000) == 0 || self->_thirdPartyMsgNoonWeekday != *(equalCopy + 89))
    {
      goto LABEL_520;
    }
  }

  else if ((v7 & 0x800000) != 0)
  {
    goto LABEL_520;
  }

  if ((v6 & 0x100000) != 0)
  {
    if ((v7 & 0x100000) == 0 || self->_thirdPartyMsgNoonFri != *(equalCopy + 86))
    {
      goto LABEL_520;
    }
  }

  else if ((v7 & 0x100000) != 0)
  {
    goto LABEL_520;
  }

  if ((v6 & 0x200000) != 0)
  {
    if ((v7 & 0x200000) == 0 || self->_thirdPartyMsgNoonSat != *(equalCopy + 87))
    {
      goto LABEL_520;
    }
  }

  else if ((v7 & 0x200000) != 0)
  {
    goto LABEL_520;
  }

  if ((v6 & 0x400000) != 0)
  {
    if ((v7 & 0x400000) == 0 || self->_thirdPartyMsgNoonSun != *(equalCopy + 88))
    {
      goto LABEL_520;
    }
  }

  else if ((v7 & 0x400000) != 0)
  {
    goto LABEL_520;
  }

  if ((v6 & 0x800) != 0)
  {
    if ((v7 & 0x800) == 0 || self->_thirdPartyMsgEveWeekday != *(equalCopy + 77))
    {
      goto LABEL_520;
    }
  }

  else if ((v7 & 0x800) != 0)
  {
    goto LABEL_520;
  }

  if ((v6 & 0x100) != 0)
  {
    if ((v7 & 0x100) == 0 || self->_thirdPartyMsgEveFri != *(equalCopy + 74))
    {
      goto LABEL_520;
    }
  }

  else if ((v7 & 0x100) != 0)
  {
    goto LABEL_520;
  }

  if ((v6 & 0x200) != 0)
  {
    if ((v7 & 0x200) == 0 || self->_thirdPartyMsgEveSat != *(equalCopy + 75))
    {
      goto LABEL_520;
    }
  }

  else if ((v7 & 0x200) != 0)
  {
    goto LABEL_520;
  }

  if ((v6 & 0x400) != 0)
  {
    if ((v7 & 0x400) == 0 || self->_thirdPartyMsgEveSun != *(equalCopy + 76))
    {
      goto LABEL_520;
    }
  }

  else if ((v7 & 0x400) != 0)
  {
    goto LABEL_520;
  }

  if ((v6 & 0x80000) != 0)
  {
    if ((v7 & 0x80000) == 0 || self->_thirdPartyMsgNightWeekday != *(equalCopy + 85))
    {
      goto LABEL_520;
    }
  }

  else if ((v7 & 0x80000) != 0)
  {
    goto LABEL_520;
  }

  if ((v6 & 0x10000) != 0)
  {
    if ((v7 & 0x10000) == 0 || self->_thirdPartyMsgNightFri != *(equalCopy + 82))
    {
      goto LABEL_520;
    }
  }

  else if ((v7 & 0x10000) != 0)
  {
    goto LABEL_520;
  }

  if ((v6 & 0x20000) != 0)
  {
    if ((v7 & 0x20000) == 0 || self->_thirdPartyMsgNightSat != *(equalCopy + 83))
    {
      goto LABEL_520;
    }
  }

  else if ((v7 & 0x20000) != 0)
  {
    goto LABEL_520;
  }

  if ((v6 & 0x40000) != 0)
  {
    if ((v7 & 0x40000) == 0 || self->_thirdPartyMsgNightSun != *(equalCopy + 84))
    {
      goto LABEL_520;
    }
  }

  else if ((v7 & 0x40000) != 0)
  {
    goto LABEL_520;
  }

  if ((v8 & 0x10000000000000) != 0)
  {
    if ((v9 & 0x10000000000000) == 0 || self->_callTotal != *(equalCopy + 53))
    {
      goto LABEL_520;
    }
  }

  else if ((v9 & 0x10000000000000) != 0)
  {
    goto LABEL_520;
  }

  if ((v6 & 0x2000000) != 0)
  {
    if ((v7 & 0x2000000) == 0 || self->_callBirthday != *(equalCopy + 182))
    {
      goto LABEL_520;
    }
  }

  else if ((v7 & 0x2000000) != 0)
  {
    goto LABEL_520;
  }

  if ((v6 & 0x40000000) != 0)
  {
    if ((v7 & 0x40000000) == 0 || self->_contactFavorite != *(equalCopy + 187))
    {
      goto LABEL_520;
    }
  }

  else if ((v7 & 0x40000000) != 0)
  {
    goto LABEL_520;
  }

  if ((v8 & 0x20000000000000) != 0)
  {
    if ((v9 & 0x20000000000000) == 0 || self->_callTotalDur != *(equalCopy + 54))
    {
      goto LABEL_520;
    }
  }

  else if ((v9 & 0x20000000000000) != 0)
  {
    goto LABEL_520;
  }

  if ((v8 & 0x2000000000) != 0)
  {
    if ((v9 & 0x2000000000) == 0 || self->_callLongRatio != *(equalCopy + 38))
    {
      goto LABEL_520;
    }
  }

  else if ((v9 & 0x2000000000) != 0)
  {
    goto LABEL_520;
  }

  if ((v8 & 0x8000000000000) != 0)
  {
    if ((v9 & 0x8000000000000) == 0 || self->_callOutgoingRatio != *(equalCopy + 52))
    {
      goto LABEL_520;
    }
  }

  else if ((v9 & 0x8000000000000) != 0)
  {
    goto LABEL_520;
  }

  if (v8)
  {
    if ((v9 & 1) == 0 || self->_callAvgDur != *(equalCopy + 1))
    {
      goto LABEL_520;
    }
  }

  else if (v9)
  {
    goto LABEL_520;
  }

  if ((v8 & 0x4000000000) != 0)
  {
    if ((v9 & 0x4000000000) == 0 || self->_callMaxDur != *(equalCopy + 39))
    {
      goto LABEL_520;
    }
  }

  else if ((v9 & 0x4000000000) != 0)
  {
    goto LABEL_520;
  }

  if ((v8 & 0x40000000000) != 0)
  {
    if ((v9 & 0x40000000000) == 0 || self->_callMorningWeekday != *(equalCopy + 43))
    {
      goto LABEL_520;
    }
  }

  else if ((v9 & 0x40000000000) != 0)
  {
    goto LABEL_520;
  }

  if ((v8 & 0x8000000000) != 0)
  {
    if ((v9 & 0x8000000000) == 0 || self->_callMorningFri != *(equalCopy + 40))
    {
      goto LABEL_520;
    }
  }

  else if ((v9 & 0x8000000000) != 0)
  {
    goto LABEL_520;
  }

  if ((v8 & 0x10000000000) != 0)
  {
    if ((v9 & 0x10000000000) == 0 || self->_callMorningSat != *(equalCopy + 41))
    {
      goto LABEL_520;
    }
  }

  else if ((v9 & 0x10000000000) != 0)
  {
    goto LABEL_520;
  }

  if ((v8 & 0x20000000000) != 0)
  {
    if ((v9 & 0x20000000000) == 0 || self->_callMorningSun != *(equalCopy + 42))
    {
      goto LABEL_520;
    }
  }

  else if ((v9 & 0x20000000000) != 0)
  {
    goto LABEL_520;
  }

  if ((v8 & 0x4000000000000) != 0)
  {
    if ((v9 & 0x4000000000000) == 0 || self->_callNoonWeekday != *(equalCopy + 51))
    {
      goto LABEL_520;
    }
  }

  else if ((v9 & 0x4000000000000) != 0)
  {
    goto LABEL_520;
  }

  if ((v8 & 0x800000000000) != 0)
  {
    if ((v9 & 0x800000000000) == 0 || self->_callNoonFri != *(equalCopy + 48))
    {
      goto LABEL_520;
    }
  }

  else if ((v9 & 0x800000000000) != 0)
  {
    goto LABEL_520;
  }

  if ((v8 & 0x1000000000000) != 0)
  {
    if ((v9 & 0x1000000000000) == 0 || self->_callNoonSat != *(equalCopy + 49))
    {
      goto LABEL_520;
    }
  }

  else if ((v9 & 0x1000000000000) != 0)
  {
    goto LABEL_520;
  }

  if ((v8 & 0x2000000000000) != 0)
  {
    if ((v9 & 0x2000000000000) == 0 || self->_callNoonSun != *(equalCopy + 50))
    {
      goto LABEL_520;
    }
  }

  else if ((v9 & 0x2000000000000) != 0)
  {
    goto LABEL_520;
  }

  if ((v8 & 0x100000) != 0)
  {
    if ((v9 & 0x100000) == 0 || self->_callEveWeekday != *(equalCopy + 21))
    {
      goto LABEL_520;
    }
  }

  else if ((v9 & 0x100000) != 0)
  {
    goto LABEL_520;
  }

  if ((v8 & 0x20000) != 0)
  {
    if ((v9 & 0x20000) == 0 || self->_callEveFri != *(equalCopy + 18))
    {
      goto LABEL_520;
    }
  }

  else if ((v9 & 0x20000) != 0)
  {
    goto LABEL_520;
  }

  v10 = *(equalCopy + 99);
  if ((v8 & 0x40000) != 0)
  {
    if ((v10 & 0x40000) == 0 || self->_callEveSat != *(equalCopy + 19))
    {
      goto LABEL_520;
    }
  }

  else if ((v10 & 0x40000) != 0)
  {
    goto LABEL_520;
  }

  if ((v8 & 0x80000) != 0)
  {
    if ((v10 & 0x80000) == 0 || self->_callEveSun != *(equalCopy + 20))
    {
      goto LABEL_520;
    }
  }

  else if ((v10 & 0x80000) != 0)
  {
    goto LABEL_520;
  }

  if ((v8 & 0x400000000000) != 0)
  {
    if ((v10 & 0x400000000000) == 0 || self->_callNightWeekday != *(equalCopy + 47))
    {
      goto LABEL_520;
    }
  }

  else if ((v10 & 0x400000000000) != 0)
  {
    goto LABEL_520;
  }

  if ((v8 & 0x80000000000) != 0)
  {
    if ((v10 & 0x80000000000) == 0 || self->_callNightFri != *(equalCopy + 44))
    {
      goto LABEL_520;
    }
  }

  else if ((v10 & 0x80000000000) != 0)
  {
    goto LABEL_520;
  }

  if ((v8 & 0x100000000000) != 0)
  {
    if ((v10 & 0x100000000000) == 0 || self->_callNightSat != *(equalCopy + 45))
    {
      goto LABEL_520;
    }
  }

  else if ((v10 & 0x100000000000) != 0)
  {
    goto LABEL_520;
  }

  if ((v8 & 0x200000000000) != 0)
  {
    if ((v10 & 0x200000000000) == 0 || self->_callNightSun != *(equalCopy + 46))
    {
      goto LABEL_520;
    }
  }

  else if ((v10 & 0x200000000000) != 0)
  {
    goto LABEL_520;
  }

  if ((v8 & 0x100) != 0)
  {
    if ((v10 & 0x100) == 0 || self->_callDurMorningWeekday != *(equalCopy + 9))
    {
      goto LABEL_520;
    }
  }

  else if ((v10 & 0x100) != 0)
  {
    goto LABEL_520;
  }

  if ((v8 & 0x20) != 0)
  {
    if ((v10 & 0x20) == 0 || self->_callDurMorningFri != *(equalCopy + 6))
    {
      goto LABEL_520;
    }
  }

  else if ((v10 & 0x20) != 0)
  {
    goto LABEL_520;
  }

  if ((v8 & 0x40) != 0)
  {
    if ((v10 & 0x40) == 0 || self->_callDurMorningSat != *(equalCopy + 7))
    {
      goto LABEL_520;
    }
  }

  else if ((v10 & 0x40) != 0)
  {
    goto LABEL_520;
  }

  if ((v8 & 0x80) != 0)
  {
    if ((v10 & 0x80) == 0 || self->_callDurMorningSun != *(equalCopy + 8))
    {
      goto LABEL_520;
    }
  }

  else if ((v10 & 0x80) != 0)
  {
    goto LABEL_520;
  }

  if ((v8 & 0x10000) != 0)
  {
    if ((v10 & 0x10000) == 0 || self->_callDurNoonWeekday != *(equalCopy + 17))
    {
      goto LABEL_520;
    }
  }

  else if ((v10 & 0x10000) != 0)
  {
    goto LABEL_520;
  }

  if ((v8 & 0x2000) != 0)
  {
    if ((v10 & 0x2000) == 0 || self->_callDurNoonFri != *(equalCopy + 14))
    {
      goto LABEL_520;
    }
  }

  else if ((v10 & 0x2000) != 0)
  {
    goto LABEL_520;
  }

  if ((v8 & 0x4000) != 0)
  {
    if ((v10 & 0x4000) == 0 || self->_callDurNoonSat != *(equalCopy + 15))
    {
      goto LABEL_520;
    }
  }

  else if ((v10 & 0x4000) != 0)
  {
    goto LABEL_520;
  }

  if ((v8 & 0x8000) != 0)
  {
    if ((v10 & 0x8000) == 0 || self->_callDurNoonSun != *(equalCopy + 16))
    {
      goto LABEL_520;
    }
  }

  else if ((v10 & 0x8000) != 0)
  {
    goto LABEL_520;
  }

  if ((v8 & 0x10) != 0)
  {
    if ((v10 & 0x10) == 0 || self->_callDurEveWeekday != *(equalCopy + 5))
    {
      goto LABEL_520;
    }
  }

  else if ((v10 & 0x10) != 0)
  {
    goto LABEL_520;
  }

  if ((v8 & 2) != 0)
  {
    if ((v10 & 2) == 0 || self->_callDurEveFri != *(equalCopy + 2))
    {
      goto LABEL_520;
    }
  }

  else if ((v10 & 2) != 0)
  {
    goto LABEL_520;
  }

  if ((v8 & 4) != 0)
  {
    if ((v10 & 4) == 0 || self->_callDurEveSat != *(equalCopy + 3))
    {
      goto LABEL_520;
    }
  }

  else if ((v10 & 4) != 0)
  {
    goto LABEL_520;
  }

  if ((v8 & 8) != 0)
  {
    if ((v10 & 8) == 0 || self->_callDurEveSun != *(equalCopy + 4))
    {
      goto LABEL_520;
    }
  }

  else if ((v10 & 8) != 0)
  {
    goto LABEL_520;
  }

  if ((v8 & 0x1000) != 0)
  {
    if ((v10 & 0x1000) == 0 || self->_callDurNightWeekday != *(equalCopy + 13))
    {
      goto LABEL_520;
    }
  }

  else if ((v10 & 0x1000) != 0)
  {
    goto LABEL_520;
  }

  if ((v8 & 0x200) != 0)
  {
    if ((v10 & 0x200) == 0 || self->_callDurNightFri != *(equalCopy + 10))
    {
      goto LABEL_520;
    }
  }

  else if ((v10 & 0x200) != 0)
  {
    goto LABEL_520;
  }

  if ((v8 & 0x400) != 0)
  {
    if ((v10 & 0x400) == 0 || self->_callDurNightSat != *(equalCopy + 11))
    {
      goto LABEL_520;
    }
  }

  else if ((v10 & 0x400) != 0)
  {
    goto LABEL_520;
  }

  if ((v8 & 0x800) != 0)
  {
    if ((v10 & 0x800) == 0 || self->_callDurNightSun != *(equalCopy + 12))
    {
      goto LABEL_520;
    }
  }

  else if ((v10 & 0x800) != 0)
  {
    goto LABEL_520;
  }

  if ((v8 & 0x10000000) != 0)
  {
    if ((v10 & 0x10000000) == 0 || self->_callLongMorningWeekday != *(equalCopy + 29))
    {
      goto LABEL_520;
    }
  }

  else if ((v10 & 0x10000000) != 0)
  {
    goto LABEL_520;
  }

  if ((v8 & 0x2000000) != 0)
  {
    if ((v10 & 0x2000000) == 0 || self->_callLongMorningFri != *(equalCopy + 26))
    {
      goto LABEL_520;
    }
  }

  else if ((v10 & 0x2000000) != 0)
  {
    goto LABEL_520;
  }

  if ((v8 & 0x4000000) != 0)
  {
    if ((v10 & 0x4000000) == 0 || self->_callLongMorningSat != *(equalCopy + 27))
    {
      goto LABEL_520;
    }
  }

  else if ((v10 & 0x4000000) != 0)
  {
    goto LABEL_520;
  }

  if ((v8 & 0x8000000) != 0)
  {
    if ((v10 & 0x8000000) == 0 || self->_callLongMorningSun != *(equalCopy + 28))
    {
      goto LABEL_520;
    }
  }

  else if ((v10 & 0x8000000) != 0)
  {
    goto LABEL_520;
  }

  if ((v8 & 0x1000000000) != 0)
  {
    if ((v10 & 0x1000000000) == 0 || self->_callLongNoonWeekday != *(equalCopy + 37))
    {
      goto LABEL_520;
    }
  }

  else if ((v10 & 0x1000000000) != 0)
  {
    goto LABEL_520;
  }

  if ((v8 & 0x200000000) != 0)
  {
    if ((v10 & 0x200000000) == 0 || self->_callLongNoonFri != *(equalCopy + 34))
    {
      goto LABEL_520;
    }
  }

  else if ((v10 & 0x200000000) != 0)
  {
    goto LABEL_520;
  }

  if ((v8 & 0x400000000) != 0)
  {
    if ((v10 & 0x400000000) == 0 || self->_callLongNoonSat != *(equalCopy + 35))
    {
      goto LABEL_520;
    }
  }

  else if ((v10 & 0x400000000) != 0)
  {
    goto LABEL_520;
  }

  if ((v8 & 0x800000000) != 0)
  {
    if ((v10 & 0x800000000) == 0 || self->_callLongNoonSun != *(equalCopy + 36))
    {
      goto LABEL_520;
    }
  }

  else if ((v10 & 0x800000000) != 0)
  {
    goto LABEL_520;
  }

  if ((v8 & 0x1000000) != 0)
  {
    if ((v10 & 0x1000000) == 0 || self->_callLongEveWeekday != *(equalCopy + 25))
    {
      goto LABEL_520;
    }
  }

  else if ((v10 & 0x1000000) != 0)
  {
    goto LABEL_520;
  }

  if ((v8 & 0x200000) != 0)
  {
    if ((v10 & 0x200000) == 0 || self->_callLongEveFri != *(equalCopy + 22))
    {
      goto LABEL_520;
    }
  }

  else if ((v10 & 0x200000) != 0)
  {
    goto LABEL_520;
  }

  if ((v8 & 0x400000) != 0)
  {
    if ((v10 & 0x400000) == 0 || self->_callLongEveSat != *(equalCopy + 23))
    {
      goto LABEL_520;
    }
  }

  else if ((v10 & 0x400000) != 0)
  {
    goto LABEL_520;
  }

  if ((v8 & 0x800000) != 0)
  {
    if ((v10 & 0x800000) == 0 || self->_callLongEveSun != *(equalCopy + 24))
    {
      goto LABEL_520;
    }
  }

  else if ((v10 & 0x800000) != 0)
  {
    goto LABEL_520;
  }

  if ((v8 & 0x100000000) != 0)
  {
    if ((v10 & 0x100000000) == 0 || self->_callLongNightWeekday != *(equalCopy + 33))
    {
      goto LABEL_520;
    }
  }

  else if ((v10 & 0x100000000) != 0)
  {
    goto LABEL_520;
  }

  if ((v8 & 0x20000000) != 0)
  {
    if ((v10 & 0x20000000) == 0 || self->_callLongNightFri != *(equalCopy + 30))
    {
      goto LABEL_520;
    }
  }

  else if ((v10 & 0x20000000) != 0)
  {
    goto LABEL_520;
  }

  if ((v8 & 0x40000000) != 0)
  {
    if ((v10 & 0x40000000) == 0 || self->_callLongNightSat != *(equalCopy + 31))
    {
      goto LABEL_520;
    }
  }

  else if ((v10 & 0x40000000) != 0)
  {
    goto LABEL_520;
  }

  if ((v8 & 0x80000000) != 0)
  {
    if ((v10 & 0x80000000) == 0 || self->_callLongNightSun != *(equalCopy + 32))
    {
      goto LABEL_520;
    }
  }

  else if ((v10 & 0x80000000) != 0)
  {
    goto LABEL_520;
  }

  v11 = *(equalCopy + 100);
  if ((v6 & 0x20000000) != 0)
  {
    if ((v11 & 0x20000000) == 0 || self->_contactFamilyRelation != *(equalCopy + 186))
    {
      goto LABEL_520;
    }
  }

  else if ((v11 & 0x20000000) != 0)
  {
    goto LABEL_520;
  }

  contactRelation = self->_contactRelation;
  if (contactRelation | *(equalCopy + 98) && ![(NSString *)contactRelation isEqual:?])
  {
    goto LABEL_520;
  }

  v13 = *(&self->_has + 1);
  v14 = *(equalCopy + 100);
  if ((v13 & 0x10000000) != 0)
  {
    if ((v14 & 0x10000000) == 0 || self->_contactFamilyName != *(equalCopy + 185))
    {
      goto LABEL_520;
    }
  }

  else if ((v14 & 0x10000000) != 0)
  {
    goto LABEL_520;
  }

  if ((v13 & 0x4000000000) != 0)
  {
    if ((v14 & 0x4000000000) == 0 || self->_contactParent != *(equalCopy + 195))
    {
      goto LABEL_520;
    }
  }

  else if ((v14 & 0x4000000000) != 0)
  {
    goto LABEL_520;
  }

  if ((v13 & 0x4000000) != 0)
  {
    if ((v14 & 0x4000000) == 0 || self->_contactEmergency != *(equalCopy + 183))
    {
      goto LABEL_520;
    }
  }

  else if ((v14 & 0x4000000) != 0)
  {
    goto LABEL_520;
  }

  if ((v13 & 0x8000000) != 0)
  {
    if ((v14 & 0x8000000) == 0 || self->_contactEmergencyFamily != *(equalCopy + 184))
    {
      goto LABEL_520;
    }
  }

  else if ((v14 & 0x8000000) != 0)
  {
    goto LABEL_520;
  }

  if ((v13 & 0x1000000000) != 0)
  {
    if ((v14 & 0x1000000000) == 0 || self->_contactInHome != *(equalCopy + 193))
    {
      goto LABEL_520;
    }
  }

  else if ((v14 & 0x1000000000) != 0)
  {
    goto LABEL_520;
  }

  if ((v13 & 0x2000000000) != 0)
  {
    if ((v14 & 0x2000000000) == 0 || self->_contactInPhotos != *(equalCopy + 194))
    {
      goto LABEL_520;
    }
  }

  else if ((v14 & 0x2000000000) != 0)
  {
    goto LABEL_520;
  }

  if ((v13 & 0x80000000) != 0)
  {
    if ((v14 & 0x80000000) == 0 || self->_contactInAirDrop != *(equalCopy + 188))
    {
      goto LABEL_520;
    }
  }

  else if ((v14 & 0x80000000) != 0)
  {
    goto LABEL_520;
  }

  if ((v13 & 0x100000000) != 0)
  {
    if ((v14 & 0x100000000) == 0 || self->_contactInAirDropAtHome != *(equalCopy + 189))
    {
      goto LABEL_520;
    }
  }

  else if ((v14 & 0x100000000) != 0)
  {
    goto LABEL_520;
  }

  if ((v13 & 0x400000000) != 0)
  {
    if ((v14 & 0x400000000) == 0 || self->_contactInFMFFollowingMe != *(equalCopy + 191))
    {
      goto LABEL_520;
    }
  }

  else if ((v14 & 0x400000000) != 0)
  {
    goto LABEL_520;
  }

  if ((v13 & 0x800000000) != 0)
  {
    if ((v14 & 0x800000000) == 0 || self->_contactInFMFSharingWithMe != *(equalCopy + 192))
    {
      goto LABEL_520;
    }
  }

  else if ((v14 & 0x800000000) != 0)
  {
    goto LABEL_520;
  }

  if ((v13 & 0x200000000) == 0)
  {
    if ((v14 & 0x200000000) == 0)
    {
      goto LABEL_519;
    }

LABEL_520:
    v15 = 0;
    goto LABEL_521;
  }

  if ((v14 & 0x200000000) == 0 || self->_contactInFMFFavorite != *(equalCopy + 190))
  {
    goto LABEL_520;
  }

LABEL_519:
  v15 = self->_mailIntelligenceContactId == *(equalCopy + 73);
LABEL_521:

  return v15;
}

- (unint64_t)hash
{
  p_has = &self->_has;
  v5 = *(&self->_has + 1);
  if ((v5 & 0x80) != 0)
  {
    v434 = 2654435761u * self->_firstPartyMsgTotal;
    if ((v5 & 0x40) != 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    v9 = 0;
    goto LABEL_9;
  }

  v434 = 0;
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  firstPartyMsgOutgoingRatio = self->_firstPartyMsgOutgoingRatio;
  if (firstPartyMsgOutgoingRatio < 0.0)
  {
    firstPartyMsgOutgoingRatio = -firstPartyMsgOutgoingRatio;
  }

  *v2.i64 = floor(firstPartyMsgOutgoingRatio + 0.5);
  v7 = (firstPartyMsgOutgoingRatio - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v8.f64[0] = NAN;
  v8.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v8), v3, v2);
  v9 = 2654435761u * *v2.i64;
  if (v7 >= 0.0)
  {
    if (v7 > 0.0)
    {
      v9 += v7;
    }
  }

  else
  {
    v9 -= fabs(v7);
  }

LABEL_9:
  v433 = &self->_has;
  v10 = *p_has;
  if ((*p_has & 0x2000000000000000) != 0)
  {
    firstPartyMsgMorningWeekday = self->_firstPartyMsgMorningWeekday;
    if (firstPartyMsgMorningWeekday < 0.0)
    {
      firstPartyMsgMorningWeekday = -firstPartyMsgMorningWeekday;
    }

    *v2.i64 = floor(firstPartyMsgMorningWeekday + 0.5);
    v13 = (firstPartyMsgMorningWeekday - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v14.f64[0] = NAN;
    v14.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v14), v3, v2);
    v11 = 2654435761u * *v2.i64;
    if (v13 >= 0.0)
    {
      if (v13 > 0.0)
      {
        v11 += v13;
      }
    }

    else
    {
      v11 -= fabs(v13);
    }
  }

  else
  {
    v11 = 0;
  }

  if ((v10 & 0x400000000000000) == 0)
  {
    v451 = 0;
    goto LABEL_28;
  }

  firstPartyMsgMorningFri = self->_firstPartyMsgMorningFri;
  if (firstPartyMsgMorningFri < 0.0)
  {
    firstPartyMsgMorningFri = -firstPartyMsgMorningFri;
  }

  *v2.i64 = floor(firstPartyMsgMorningFri + 0.5);
  v16 = (firstPartyMsgMorningFri - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v17.f64[0] = NAN;
  v17.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v17), v3, v2);
  v451 = 2654435761u * *v2.i64;
  if (v16 >= 0.0)
  {
    if (v16 <= 0.0)
    {
      goto LABEL_28;
    }

    v18 = v451 + v16;
  }

  else
  {
    v18 = v451 - fabs(v16);
  }

  v451 = v18;
LABEL_28:
  if ((v10 & 0x800000000000000) != 0)
  {
    firstPartyMsgMorningSat = self->_firstPartyMsgMorningSat;
    if (firstPartyMsgMorningSat < 0.0)
    {
      firstPartyMsgMorningSat = -firstPartyMsgMorningSat;
    }

    *v2.i64 = floor(firstPartyMsgMorningSat + 0.5);
    v21 = (firstPartyMsgMorningSat - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v22.f64[0] = NAN;
    v22.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v22), v3, v2);
    v19 = 2654435761u * *v2.i64;
    if (v21 >= 0.0)
    {
      if (v21 > 0.0)
      {
        v19 += v21;
      }
    }

    else
    {
      v19 -= fabs(v21);
    }
  }

  else
  {
    v19 = 0;
  }

  if ((v10 & 0x1000000000000000) == 0)
  {
    v452 = 0;
    goto LABEL_45;
  }

  firstPartyMsgMorningSun = self->_firstPartyMsgMorningSun;
  if (firstPartyMsgMorningSun < 0.0)
  {
    firstPartyMsgMorningSun = -firstPartyMsgMorningSun;
  }

  *v2.i64 = floor(firstPartyMsgMorningSun + 0.5);
  v24 = (firstPartyMsgMorningSun - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v25.f64[0] = NAN;
  v25.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v25), v3, v2);
  v452 = 2654435761u * *v2.i64;
  if (v24 >= 0.0)
  {
    if (v24 <= 0.0)
    {
      goto LABEL_45;
    }

    v26 = v452 + v24;
  }

  else
  {
    v26 = v452 - fabs(v24);
  }

  v452 = v26;
LABEL_45:
  if ((v5 & 0x20) == 0)
  {
    v453 = 0;
    goto LABEL_54;
  }

  firstPartyMsgNoonWeekday = self->_firstPartyMsgNoonWeekday;
  if (firstPartyMsgNoonWeekday < 0.0)
  {
    firstPartyMsgNoonWeekday = -firstPartyMsgNoonWeekday;
  }

  *v2.i64 = floor(firstPartyMsgNoonWeekday + 0.5);
  v28 = (firstPartyMsgNoonWeekday - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v29.f64[0] = NAN;
  v29.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v29), v3, v2);
  v453 = 2654435761u * *v2.i64;
  if (v28 >= 0.0)
  {
    if (v28 <= 0.0)
    {
      goto LABEL_54;
    }

    v30 = v453 + v28;
  }

  else
  {
    v30 = v453 - fabs(v28);
  }

  v453 = v30;
LABEL_54:
  if ((v5 & 4) == 0)
  {
    v455 = 0;
    goto LABEL_63;
  }

  firstPartyMsgNoonFri = self->_firstPartyMsgNoonFri;
  if (firstPartyMsgNoonFri < 0.0)
  {
    firstPartyMsgNoonFri = -firstPartyMsgNoonFri;
  }

  *v2.i64 = floor(firstPartyMsgNoonFri + 0.5);
  v32 = (firstPartyMsgNoonFri - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v33.f64[0] = NAN;
  v33.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v33), v3, v2);
  v455 = 2654435761u * *v2.i64;
  if (v32 >= 0.0)
  {
    if (v32 <= 0.0)
    {
      goto LABEL_63;
    }

    v34 = v455 + v32;
  }

  else
  {
    v34 = v455 - fabs(v32);
  }

  v455 = v34;
LABEL_63:
  if ((v5 & 8) == 0)
  {
    v457 = 0;
    goto LABEL_72;
  }

  firstPartyMsgNoonSat = self->_firstPartyMsgNoonSat;
  if (firstPartyMsgNoonSat < 0.0)
  {
    firstPartyMsgNoonSat = -firstPartyMsgNoonSat;
  }

  *v2.i64 = floor(firstPartyMsgNoonSat + 0.5);
  v36 = (firstPartyMsgNoonSat - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v37.f64[0] = NAN;
  v37.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v37), v3, v2);
  v457 = 2654435761u * *v2.i64;
  if (v36 >= 0.0)
  {
    if (v36 <= 0.0)
    {
      goto LABEL_72;
    }

    v38 = v457 + v36;
  }

  else
  {
    v38 = v457 - fabs(v36);
  }

  v457 = v38;
LABEL_72:
  if ((v5 & 0x10) == 0)
  {
    v458 = 0;
    goto LABEL_81;
  }

  firstPartyMsgNoonSun = self->_firstPartyMsgNoonSun;
  if (firstPartyMsgNoonSun < 0.0)
  {
    firstPartyMsgNoonSun = -firstPartyMsgNoonSun;
  }

  *v2.i64 = floor(firstPartyMsgNoonSun + 0.5);
  v40 = (firstPartyMsgNoonSun - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v41.f64[0] = NAN;
  v41.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v41), v3, v2);
  v458 = 2654435761u * *v2.i64;
  if (v40 >= 0.0)
  {
    if (v40 <= 0.0)
    {
      goto LABEL_81;
    }

    v42 = v458 + v40;
  }

  else
  {
    v42 = v458 - fabs(v40);
  }

  v458 = v42;
LABEL_81:
  if ((v10 & 0x200000000000000) == 0)
  {
    v461 = 0;
    goto LABEL_90;
  }

  firstPartyMsgEveWeekday = self->_firstPartyMsgEveWeekday;
  if (firstPartyMsgEveWeekday < 0.0)
  {
    firstPartyMsgEveWeekday = -firstPartyMsgEveWeekday;
  }

  *v2.i64 = floor(firstPartyMsgEveWeekday + 0.5);
  v44 = (firstPartyMsgEveWeekday - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v45.f64[0] = NAN;
  v45.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v45), v3, v2);
  v461 = 2654435761u * *v2.i64;
  if (v44 >= 0.0)
  {
    if (v44 <= 0.0)
    {
      goto LABEL_90;
    }

    v46 = v461 + v44;
  }

  else
  {
    v46 = v461 - fabs(v44);
  }

  v461 = v46;
LABEL_90:
  if ((v10 & 0x40000000000000) == 0)
  {
    v460 = 0;
    goto LABEL_99;
  }

  firstPartyMsgEveFri = self->_firstPartyMsgEveFri;
  if (firstPartyMsgEveFri < 0.0)
  {
    firstPartyMsgEveFri = -firstPartyMsgEveFri;
  }

  *v2.i64 = floor(firstPartyMsgEveFri + 0.5);
  v48 = (firstPartyMsgEveFri - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v49.f64[0] = NAN;
  v49.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v49), v3, v2);
  v460 = 2654435761u * *v2.i64;
  if (v48 >= 0.0)
  {
    if (v48 <= 0.0)
    {
      goto LABEL_99;
    }

    v50 = v460 + v48;
  }

  else
  {
    v50 = v460 - fabs(v48);
  }

  v460 = v50;
LABEL_99:
  if ((v10 & 0x80000000000000) == 0)
  {
    v459 = 0;
    goto LABEL_108;
  }

  firstPartyMsgEveSat = self->_firstPartyMsgEveSat;
  if (firstPartyMsgEveSat < 0.0)
  {
    firstPartyMsgEveSat = -firstPartyMsgEveSat;
  }

  *v2.i64 = floor(firstPartyMsgEveSat + 0.5);
  v52 = (firstPartyMsgEveSat - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v53.f64[0] = NAN;
  v53.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v53), v3, v2);
  v459 = 2654435761u * *v2.i64;
  if (v52 >= 0.0)
  {
    if (v52 <= 0.0)
    {
      goto LABEL_108;
    }

    v54 = v459 + v52;
  }

  else
  {
    v54 = v459 - fabs(v52);
  }

  v459 = v54;
LABEL_108:
  if ((v10 & 0x100000000000000) == 0)
  {
    v444 = 0;
    goto LABEL_117;
  }

  firstPartyMsgEveSun = self->_firstPartyMsgEveSun;
  if (firstPartyMsgEveSun < 0.0)
  {
    firstPartyMsgEveSun = -firstPartyMsgEveSun;
  }

  *v2.i64 = floor(firstPartyMsgEveSun + 0.5);
  v56 = (firstPartyMsgEveSun - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v57.f64[0] = NAN;
  v57.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v57), v3, v2);
  v444 = 2654435761u * *v2.i64;
  if (v56 >= 0.0)
  {
    if (v56 <= 0.0)
    {
      goto LABEL_117;
    }

    v58 = v444 + v56;
  }

  else
  {
    v58 = v444 - fabs(v56);
  }

  v444 = v58;
LABEL_117:
  if ((v5 & 2) == 0)
  {
    v443 = 0;
    goto LABEL_126;
  }

  firstPartyMsgNightWeekday = self->_firstPartyMsgNightWeekday;
  if (firstPartyMsgNightWeekday < 0.0)
  {
    firstPartyMsgNightWeekday = -firstPartyMsgNightWeekday;
  }

  *v2.i64 = floor(firstPartyMsgNightWeekday + 0.5);
  v60 = (firstPartyMsgNightWeekday - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v61.f64[0] = NAN;
  v61.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v61), v3, v2);
  v443 = 2654435761u * *v2.i64;
  if (v60 >= 0.0)
  {
    if (v60 <= 0.0)
    {
      goto LABEL_126;
    }

    v62 = v443 + v60;
  }

  else
  {
    v62 = v443 - fabs(v60);
  }

  v443 = v62;
LABEL_126:
  v430 = v11;
  if ((v10 & 0x4000000000000000) == 0)
  {
    v456 = 0;
    goto LABEL_135;
  }

  firstPartyMsgNightFri = self->_firstPartyMsgNightFri;
  if (firstPartyMsgNightFri < 0.0)
  {
    firstPartyMsgNightFri = -firstPartyMsgNightFri;
  }

  *v2.i64 = floor(firstPartyMsgNightFri + 0.5);
  v64 = (firstPartyMsgNightFri - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v65.f64[0] = NAN;
  v65.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v65), v3, v2);
  v456 = 2654435761u * *v2.i64;
  if (v64 >= 0.0)
  {
    if (v64 <= 0.0)
    {
      goto LABEL_135;
    }

    v66 = v456 + v64;
  }

  else
  {
    v66 = v456 - fabs(v64);
  }

  v456 = v66;
LABEL_135:
  if ((v10 & 0x8000000000000000) == 0)
  {
    v436 = 0;
    goto LABEL_144;
  }

  firstPartyMsgNightSat = self->_firstPartyMsgNightSat;
  if (firstPartyMsgNightSat < 0.0)
  {
    firstPartyMsgNightSat = -firstPartyMsgNightSat;
  }

  *v2.i64 = floor(firstPartyMsgNightSat + 0.5);
  v68 = (firstPartyMsgNightSat - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v69.f64[0] = NAN;
  v69.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v69), v3, v2);
  v436 = 2654435761u * *v2.i64;
  if (v68 >= 0.0)
  {
    if (v68 <= 0.0)
    {
      goto LABEL_144;
    }

    v70 = v436 + v68;
  }

  else
  {
    v70 = v436 - fabs(v68);
  }

  v436 = v70;
LABEL_144:
  if ((v5 & 1) == 0)
  {
    v442 = 0;
    goto LABEL_153;
  }

  firstPartyMsgNightSun = self->_firstPartyMsgNightSun;
  if (firstPartyMsgNightSun < 0.0)
  {
    firstPartyMsgNightSun = -firstPartyMsgNightSun;
  }

  *v2.i64 = floor(firstPartyMsgNightSun + 0.5);
  v72 = (firstPartyMsgNightSun - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v73.f64[0] = NAN;
  v73.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v73), v3, v2);
  v442 = 2654435761u * *v2.i64;
  if (v72 >= 0.0)
  {
    if (v72 <= 0.0)
    {
      goto LABEL_153;
    }

    v74 = v442 + v72;
  }

  else
  {
    v74 = v442 - fabs(v72);
  }

  v442 = v74;
LABEL_153:
  if ((v5 & 0x1000000) != 0)
  {
    v432 = 2654435761u * self->_thirdPartyMsgTotal;
  }

  else
  {
    v432 = 0;
  }

  v431 = v19;
  v429 = v9;
  if ((v5 & 0x8000) == 0)
  {
    v454 = 0;
    goto LABEL_165;
  }

  thirdPartyMsgMorningWeekday = self->_thirdPartyMsgMorningWeekday;
  if (thirdPartyMsgMorningWeekday < 0.0)
  {
    thirdPartyMsgMorningWeekday = -thirdPartyMsgMorningWeekday;
  }

  *v2.i64 = floor(thirdPartyMsgMorningWeekday + 0.5);
  v76 = (thirdPartyMsgMorningWeekday - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v77.f64[0] = NAN;
  v77.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v77), v3, v2);
  v454 = 2654435761u * *v2.i64;
  if (v76 >= 0.0)
  {
    if (v76 <= 0.0)
    {
      goto LABEL_165;
    }

    v78 = v454 + v76;
  }

  else
  {
    v78 = v454 - fabs(v76);
  }

  v454 = v78;
LABEL_165:
  if ((v5 & 0x1000) == 0)
  {
    v441 = 0;
    goto LABEL_174;
  }

  thirdPartyMsgMorningFri = self->_thirdPartyMsgMorningFri;
  if (thirdPartyMsgMorningFri < 0.0)
  {
    thirdPartyMsgMorningFri = -thirdPartyMsgMorningFri;
  }

  *v2.i64 = floor(thirdPartyMsgMorningFri + 0.5);
  v80 = (thirdPartyMsgMorningFri - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v81.f64[0] = NAN;
  v81.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v81), v3, v2);
  v441 = 2654435761u * *v2.i64;
  if (v80 >= 0.0)
  {
    if (v80 <= 0.0)
    {
      goto LABEL_174;
    }

    v82 = v441 + v80;
  }

  else
  {
    v82 = v441 - fabs(v80);
  }

  v441 = v82;
LABEL_174:
  if ((v5 & 0x2000) != 0)
  {
    thirdPartyMsgMorningSat = self->_thirdPartyMsgMorningSat;
    if (thirdPartyMsgMorningSat < 0.0)
    {
      thirdPartyMsgMorningSat = -thirdPartyMsgMorningSat;
    }

    *v2.i64 = floor(thirdPartyMsgMorningSat + 0.5);
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v84.f64[0] = NAN;
    v84.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v84), v3, v2);
  }

  if ((v5 & 0x4000) == 0)
  {
    v440 = 0;
    goto LABEL_187;
  }

  thirdPartyMsgMorningSun = self->_thirdPartyMsgMorningSun;
  if (thirdPartyMsgMorningSun < 0.0)
  {
    thirdPartyMsgMorningSun = -thirdPartyMsgMorningSun;
  }

  *v2.i64 = floor(thirdPartyMsgMorningSun + 0.5);
  v86 = (thirdPartyMsgMorningSun - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v87.f64[0] = NAN;
  v87.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v87), v3, v2);
  v440 = 2654435761u * *v2.i64;
  if (v86 >= 0.0)
  {
    if (v86 <= 0.0)
    {
      goto LABEL_187;
    }

    v88 = v440 + v86;
  }

  else
  {
    v88 = v440 - fabs(v86);
  }

  v440 = v88;
LABEL_187:
  if ((v5 & 0x800000) == 0)
  {
    v439 = 0;
    goto LABEL_196;
  }

  thirdPartyMsgNoonWeekday = self->_thirdPartyMsgNoonWeekday;
  if (thirdPartyMsgNoonWeekday < 0.0)
  {
    thirdPartyMsgNoonWeekday = -thirdPartyMsgNoonWeekday;
  }

  *v2.i64 = floor(thirdPartyMsgNoonWeekday + 0.5);
  v90 = (thirdPartyMsgNoonWeekday - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v91.f64[0] = NAN;
  v91.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v91), v3, v2);
  v439 = 2654435761u * *v2.i64;
  if (v90 >= 0.0)
  {
    if (v90 <= 0.0)
    {
      goto LABEL_196;
    }

    v92 = v439 + v90;
  }

  else
  {
    v92 = v439 - fabs(v90);
  }

  v439 = v92;
LABEL_196:
  if ((v5 & 0x100000) == 0)
  {
    v437 = 0;
    goto LABEL_205;
  }

  thirdPartyMsgNoonFri = self->_thirdPartyMsgNoonFri;
  if (thirdPartyMsgNoonFri < 0.0)
  {
    thirdPartyMsgNoonFri = -thirdPartyMsgNoonFri;
  }

  *v2.i64 = floor(thirdPartyMsgNoonFri + 0.5);
  v94 = (thirdPartyMsgNoonFri - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v95.f64[0] = NAN;
  v95.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v95), v3, v2);
  v437 = 2654435761u * *v2.i64;
  if (v94 >= 0.0)
  {
    if (v94 <= 0.0)
    {
      goto LABEL_205;
    }

    v96 = v437 + v94;
  }

  else
  {
    v96 = v437 - fabs(v94);
  }

  v437 = v96;
LABEL_205:
  if ((v5 & 0x200000) == 0)
  {
    v449 = 0;
    goto LABEL_214;
  }

  thirdPartyMsgNoonSat = self->_thirdPartyMsgNoonSat;
  if (thirdPartyMsgNoonSat < 0.0)
  {
    thirdPartyMsgNoonSat = -thirdPartyMsgNoonSat;
  }

  *v2.i64 = floor(thirdPartyMsgNoonSat + 0.5);
  v98 = (thirdPartyMsgNoonSat - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v99.f64[0] = NAN;
  v99.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v99), v3, v2);
  v449 = 2654435761u * *v2.i64;
  if (v98 >= 0.0)
  {
    if (v98 <= 0.0)
    {
      goto LABEL_214;
    }

    v100 = v449 + v98;
  }

  else
  {
    v100 = v449 - fabs(v98);
  }

  v449 = v100;
LABEL_214:
  if ((v5 & 0x400000) == 0)
  {
    v450 = 0;
    goto LABEL_223;
  }

  thirdPartyMsgNoonSun = self->_thirdPartyMsgNoonSun;
  if (thirdPartyMsgNoonSun < 0.0)
  {
    thirdPartyMsgNoonSun = -thirdPartyMsgNoonSun;
  }

  *v2.i64 = floor(thirdPartyMsgNoonSun + 0.5);
  v102 = (thirdPartyMsgNoonSun - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v103.f64[0] = NAN;
  v103.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v103), v3, v2);
  v450 = 2654435761u * *v2.i64;
  if (v102 >= 0.0)
  {
    if (v102 <= 0.0)
    {
      goto LABEL_223;
    }

    v104 = v450 + v102;
  }

  else
  {
    v104 = v450 - fabs(v102);
  }

  v450 = v104;
LABEL_223:
  if ((v5 & 0x800) == 0)
  {
    v448 = 0;
    goto LABEL_232;
  }

  thirdPartyMsgEveWeekday = self->_thirdPartyMsgEveWeekday;
  if (thirdPartyMsgEveWeekday < 0.0)
  {
    thirdPartyMsgEveWeekday = -thirdPartyMsgEveWeekday;
  }

  *v2.i64 = floor(thirdPartyMsgEveWeekday + 0.5);
  v106 = (thirdPartyMsgEveWeekday - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v107.f64[0] = NAN;
  v107.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v107), v3, v2);
  v448 = 2654435761u * *v2.i64;
  if (v106 >= 0.0)
  {
    if (v106 <= 0.0)
    {
      goto LABEL_232;
    }

    v108 = v448 + v106;
  }

  else
  {
    v108 = v448 - fabs(v106);
  }

  v448 = v108;
LABEL_232:
  if ((v5 & 0x100) == 0)
  {
    v435 = 0;
    goto LABEL_241;
  }

  thirdPartyMsgEveFri = self->_thirdPartyMsgEveFri;
  if (thirdPartyMsgEveFri < 0.0)
  {
    thirdPartyMsgEveFri = -thirdPartyMsgEveFri;
  }

  *v2.i64 = floor(thirdPartyMsgEveFri + 0.5);
  v110 = (thirdPartyMsgEveFri - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v111.f64[0] = NAN;
  v111.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v111), v3, v2);
  if (v110 >= 0.0)
  {
    v435 = 2654435761u * *v2.i64;
    if (v110 <= 0.0)
    {
      goto LABEL_241;
    }

    v112 = v435 + v110;
  }

  else
  {
    v112 = 2654435761u * *v2.i64 - fabs(v110);
  }

  v435 = v112;
LABEL_241:
  if ((v5 & 0x200) == 0)
  {
    v447 = 0;
    goto LABEL_250;
  }

  thirdPartyMsgEveSat = self->_thirdPartyMsgEveSat;
  if (thirdPartyMsgEveSat < 0.0)
  {
    thirdPartyMsgEveSat = -thirdPartyMsgEveSat;
  }

  *v2.i64 = floor(thirdPartyMsgEveSat + 0.5);
  v114 = (thirdPartyMsgEveSat - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v115.f64[0] = NAN;
  v115.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v115), v3, v2);
  v447 = 2654435761u * *v2.i64;
  if (v114 >= 0.0)
  {
    if (v114 <= 0.0)
    {
      goto LABEL_250;
    }

    v116 = v447 + v114;
  }

  else
  {
    v116 = v447 - fabs(v114);
  }

  v447 = v116;
LABEL_250:
  if ((v5 & 0x400) != 0)
  {
    thirdPartyMsgEveSun = self->_thirdPartyMsgEveSun;
    if (thirdPartyMsgEveSun < 0.0)
    {
      thirdPartyMsgEveSun = -thirdPartyMsgEveSun;
    }

    *v2.i64 = floor(thirdPartyMsgEveSun + 0.5);
    v119 = (thirdPartyMsgEveSun - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v120.f64[0] = NAN;
    v120.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v120), v3, v2);
    v117 = 2654435761u * *v2.i64;
    if (v119 >= 0.0)
    {
      if (v119 > 0.0)
      {
        v117 += v119;
      }
    }

    else
    {
      v117 -= fabs(v119);
    }
  }

  else
  {
    v117 = 0;
  }

  v428 = v117;
  if ((v5 & 0x80000) == 0)
  {
    v446 = 0;
    goto LABEL_267;
  }

  thirdPartyMsgNightWeekday = self->_thirdPartyMsgNightWeekday;
  if (thirdPartyMsgNightWeekday < 0.0)
  {
    thirdPartyMsgNightWeekday = -thirdPartyMsgNightWeekday;
  }

  *v2.i64 = floor(thirdPartyMsgNightWeekday + 0.5);
  v122 = (thirdPartyMsgNightWeekday - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v123.f64[0] = NAN;
  v123.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v123), v3, v2);
  v446 = 2654435761u * *v2.i64;
  if (v122 >= 0.0)
  {
    if (v122 <= 0.0)
    {
      goto LABEL_267;
    }

    v124 = v446 + v122;
  }

  else
  {
    v124 = v446 - fabs(v122);
  }

  v446 = v124;
LABEL_267:
  if ((v5 & 0x10000) != 0)
  {
    thirdPartyMsgNightFri = self->_thirdPartyMsgNightFri;
    if (thirdPartyMsgNightFri < 0.0)
    {
      thirdPartyMsgNightFri = -thirdPartyMsgNightFri;
    }

    *v2.i64 = floor(thirdPartyMsgNightFri + 0.5);
    v127 = (thirdPartyMsgNightFri - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v128.f64[0] = NAN;
    v128.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v128), v3, v2);
    v125 = 2654435761u * *v2.i64;
    if (v127 >= 0.0)
    {
      if (v127 > 0.0)
      {
        v125 += v127;
      }
    }

    else
    {
      v125 -= fabs(v127);
    }
  }

  else
  {
    v125 = 0;
  }

  v427 = v125;
  if ((v5 & 0x20000) == 0)
  {
    v445 = 0;
    goto LABEL_284;
  }

  thirdPartyMsgNightSat = self->_thirdPartyMsgNightSat;
  if (thirdPartyMsgNightSat < 0.0)
  {
    thirdPartyMsgNightSat = -thirdPartyMsgNightSat;
  }

  *v2.i64 = floor(thirdPartyMsgNightSat + 0.5);
  v130 = (thirdPartyMsgNightSat - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v131.f64[0] = NAN;
  v131.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v131), v3, v2);
  v445 = 2654435761u * *v2.i64;
  if (v130 >= 0.0)
  {
    if (v130 <= 0.0)
    {
      goto LABEL_284;
    }

    v132 = v445 + v130;
  }

  else
  {
    v132 = v445 - fabs(v130);
  }

  v445 = v132;
LABEL_284:
  if ((v5 & 0x40000) != 0)
  {
    thirdPartyMsgNightSun = self->_thirdPartyMsgNightSun;
    if (thirdPartyMsgNightSun < 0.0)
    {
      thirdPartyMsgNightSun = -thirdPartyMsgNightSun;
    }

    *v2.i64 = floor(thirdPartyMsgNightSun + 0.5);
    v135 = (thirdPartyMsgNightSun - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v136.f64[0] = NAN;
    v136.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v136), v3, v2);
    v133 = 2654435761u * *v2.i64;
    if (v135 >= 0.0)
    {
      if (v135 > 0.0)
      {
        v133 += v135;
      }
    }

    else
    {
      v133 -= fabs(v135);
    }
  }

  else
  {
    v133 = 0;
  }

  v426 = v133;
  if ((v10 & 0x10000000000000) != 0)
  {
    v425 = 2654435761u * self->_callTotal;
    if ((v5 & 0x2000000) != 0)
    {
LABEL_294:
      v424 = 2654435761 * self->_callBirthday;
      if ((v5 & 0x40000000) != 0)
      {
        goto LABEL_295;
      }

LABEL_302:
      v423 = 0;
      if ((v10 & 0x20000000000000) != 0)
      {
        goto LABEL_296;
      }

LABEL_303:
      v140 = 0;
      goto LABEL_304;
    }
  }

  else
  {
    v425 = 0;
    if ((v5 & 0x2000000) != 0)
    {
      goto LABEL_294;
    }
  }

  v424 = 0;
  if ((v5 & 0x40000000) == 0)
  {
    goto LABEL_302;
  }

LABEL_295:
  v423 = 2654435761 * self->_contactFavorite;
  if ((v10 & 0x20000000000000) == 0)
  {
    goto LABEL_303;
  }

LABEL_296:
  callTotalDur = self->_callTotalDur;
  if (callTotalDur < 0.0)
  {
    callTotalDur = -callTotalDur;
  }

  *v2.i64 = floor(callTotalDur + 0.5);
  v138 = (callTotalDur - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v139.f64[0] = NAN;
  v139.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v139), v3, v2);
  v140 = 2654435761u * *v2.i64;
  if (v138 >= 0.0)
  {
    if (v138 > 0.0)
    {
      v140 += v138;
    }
  }

  else
  {
    v140 -= fabs(v138);
  }

LABEL_304:
  if ((v10 & 0x2000000000) != 0)
  {
    callLongRatio = self->_callLongRatio;
    if (callLongRatio < 0.0)
    {
      callLongRatio = -callLongRatio;
    }

    *v2.i64 = floor(callLongRatio + 0.5);
    v143 = (callLongRatio - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v144.f64[0] = NAN;
    v144.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v144), v3, v2);
    v141 = 2654435761u * *v2.i64;
    if (v143 >= 0.0)
    {
      if (v143 > 0.0)
      {
        v141 += v143;
      }
    }

    else
    {
      v141 -= fabs(v143);
    }
  }

  else
  {
    v141 = 0;
  }

  v421 = v141;
  if ((v10 & 0x8000000000000) != 0)
  {
    callOutgoingRatio = self->_callOutgoingRatio;
    if (callOutgoingRatio < 0.0)
    {
      callOutgoingRatio = -callOutgoingRatio;
    }

    *v2.i64 = floor(callOutgoingRatio + 0.5);
    v147 = (callOutgoingRatio - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v148.f64[0] = NAN;
    v148.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v148), v3, v2);
    v145 = 2654435761u * *v2.i64;
    if (v147 >= 0.0)
    {
      if (v147 > 0.0)
      {
        v145 += v147;
      }
    }

    else
    {
      v145 -= fabs(v147);
    }
  }

  else
  {
    v145 = 0;
  }

  if (v10)
  {
    callAvgDur = self->_callAvgDur;
    if (callAvgDur < 0.0)
    {
      callAvgDur = -callAvgDur;
    }

    *v2.i64 = floor(callAvgDur + 0.5);
    v151 = (callAvgDur - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v152.f64[0] = NAN;
    v152.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v152), v3, v2);
    v149 = 2654435761u * *v2.i64;
    if (v151 >= 0.0)
    {
      if (v151 > 0.0)
      {
        v149 += v151;
      }
    }

    else
    {
      v149 -= fabs(v151);
    }
  }

  else
  {
    v149 = 0;
  }

  v419 = v149;
  if ((v10 & 0x4000000000) != 0)
  {
    callMaxDur = self->_callMaxDur;
    if (callMaxDur < 0.0)
    {
      callMaxDur = -callMaxDur;
    }

    *v2.i64 = floor(callMaxDur + 0.5);
    v155 = (callMaxDur - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v156.f64[0] = NAN;
    v156.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v156), v3, v2);
    v153 = 2654435761u * *v2.i64;
    if (v155 >= 0.0)
    {
      if (v155 > 0.0)
      {
        v153 += v155;
      }
    }

    else
    {
      v153 -= fabs(v155);
    }
  }

  else
  {
    v153 = 0;
  }

  if ((v10 & 0x40000000000) != 0)
  {
    callMorningWeekday = self->_callMorningWeekday;
    if (callMorningWeekday < 0.0)
    {
      callMorningWeekday = -callMorningWeekday;
    }

    *v2.i64 = floor(callMorningWeekday + 0.5);
    v159 = (callMorningWeekday - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v160.f64[0] = NAN;
    v160.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v160), v3, v2);
    v157 = 2654435761u * *v2.i64;
    if (v159 >= 0.0)
    {
      if (v159 > 0.0)
      {
        v157 += v159;
      }
    }

    else
    {
      v157 -= fabs(v159);
    }
  }

  else
  {
    v157 = 0;
  }

  v417 = v157;
  if ((v10 & 0x8000000000) != 0)
  {
    callMorningFri = self->_callMorningFri;
    if (callMorningFri < 0.0)
    {
      callMorningFri = -callMorningFri;
    }

    *v2.i64 = floor(callMorningFri + 0.5);
    v163 = (callMorningFri - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v164.f64[0] = NAN;
    v164.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v164), v3, v2);
    v161 = 2654435761u * *v2.i64;
    if (v163 >= 0.0)
    {
      if (v163 > 0.0)
      {
        v161 += v163;
      }
    }

    else
    {
      v161 -= fabs(v163);
    }
  }

  else
  {
    v161 = 0;
  }

  if ((v10 & 0x10000000000) != 0)
  {
    callMorningSat = self->_callMorningSat;
    if (callMorningSat < 0.0)
    {
      callMorningSat = -callMorningSat;
    }

    *v2.i64 = floor(callMorningSat + 0.5);
    v167 = (callMorningSat - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v168.f64[0] = NAN;
    v168.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v168), v3, v2);
    v165 = 2654435761u * *v2.i64;
    if (v167 >= 0.0)
    {
      if (v167 > 0.0)
      {
        v165 += v167;
      }
    }

    else
    {
      v165 -= fabs(v167);
    }
  }

  else
  {
    v165 = 0;
  }

  v415 = v165;
  if ((v10 & 0x20000000000) != 0)
  {
    callMorningSun = self->_callMorningSun;
    if (callMorningSun < 0.0)
    {
      callMorningSun = -callMorningSun;
    }

    *v2.i64 = floor(callMorningSun + 0.5);
    v171 = (callMorningSun - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v172.f64[0] = NAN;
    v172.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v172), v3, v2);
    v169 = 2654435761u * *v2.i64;
    if (v171 >= 0.0)
    {
      if (v171 > 0.0)
      {
        v169 += v171;
      }
    }

    else
    {
      v169 -= fabs(v171);
    }
  }

  else
  {
    v169 = 0;
  }

  if ((v10 & 0x4000000000000) != 0)
  {
    callNoonWeekday = self->_callNoonWeekday;
    if (callNoonWeekday < 0.0)
    {
      callNoonWeekday = -callNoonWeekday;
    }

    *v2.i64 = floor(callNoonWeekday + 0.5);
    v175 = (callNoonWeekday - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v176.f64[0] = NAN;
    v176.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v176), v3, v2);
    v173 = 2654435761u * *v2.i64;
    if (v175 >= 0.0)
    {
      if (v175 > 0.0)
      {
        v173 += v175;
      }
    }

    else
    {
      v173 -= fabs(v175);
    }
  }

  else
  {
    v173 = 0;
  }

  v413 = v173;
  if ((v10 & 0x800000000000) != 0)
  {
    callNoonFri = self->_callNoonFri;
    if (callNoonFri < 0.0)
    {
      callNoonFri = -callNoonFri;
    }

    *v2.i64 = floor(callNoonFri + 0.5);
    v179 = (callNoonFri - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v180.f64[0] = NAN;
    v180.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v180), v3, v2);
    v177 = 2654435761u * *v2.i64;
    if (v179 >= 0.0)
    {
      if (v179 > 0.0)
      {
        v177 += v179;
      }
    }

    else
    {
      v177 -= fabs(v179);
    }
  }

  else
  {
    v177 = 0;
  }

  if ((v10 & 0x1000000000000) != 0)
  {
    callNoonSat = self->_callNoonSat;
    if (callNoonSat < 0.0)
    {
      callNoonSat = -callNoonSat;
    }

    *v2.i64 = floor(callNoonSat + 0.5);
    v183 = (callNoonSat - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v184.f64[0] = NAN;
    v184.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v184), v3, v2);
    v181 = 2654435761u * *v2.i64;
    if (v183 >= 0.0)
    {
      if (v183 > 0.0)
      {
        v181 += v183;
      }
    }

    else
    {
      v181 -= fabs(v183);
    }
  }

  else
  {
    v181 = 0;
  }

  v412 = v181;
  if ((v10 & 0x2000000000000) != 0)
  {
    callNoonSun = self->_callNoonSun;
    if (callNoonSun < 0.0)
    {
      callNoonSun = -callNoonSun;
    }

    *v2.i64 = floor(callNoonSun + 0.5);
    v187 = (callNoonSun - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v188.f64[0] = NAN;
    v188.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v188), v3, v2);
    v185 = 2654435761u * *v2.i64;
    if (v187 >= 0.0)
    {
      if (v187 > 0.0)
      {
        v185 += v187;
      }
    }

    else
    {
      v185 -= fabs(v187);
    }
  }

  else
  {
    v185 = 0;
  }

  if ((v10 & 0x100000) != 0)
  {
    callEveWeekday = self->_callEveWeekday;
    if (callEveWeekday < 0.0)
    {
      callEveWeekday = -callEveWeekday;
    }

    *v2.i64 = floor(callEveWeekday + 0.5);
    v191 = (callEveWeekday - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v192.f64[0] = NAN;
    v192.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v192), v3, v2);
    v189 = 2654435761u * *v2.i64;
    if (v191 >= 0.0)
    {
      if (v191 > 0.0)
      {
        v189 += v191;
      }
    }

    else
    {
      v189 -= fabs(v191);
    }
  }

  else
  {
    v189 = 0;
  }

  v410 = v189;
  if ((v10 & 0x20000) != 0)
  {
    callEveFri = self->_callEveFri;
    if (callEveFri < 0.0)
    {
      callEveFri = -callEveFri;
    }

    *v2.i64 = floor(callEveFri + 0.5);
    v195 = (callEveFri - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v196.f64[0] = NAN;
    v196.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v196), v3, v2);
    v193 = 2654435761u * *v2.i64;
    if (v195 >= 0.0)
    {
      if (v195 > 0.0)
      {
        v193 += v195;
      }
    }

    else
    {
      v193 -= fabs(v195);
    }
  }

  else
  {
    v193 = 0;
  }

  if ((v10 & 0x40000) != 0)
  {
    callEveSat = self->_callEveSat;
    if (callEveSat < 0.0)
    {
      callEveSat = -callEveSat;
    }

    *v2.i64 = floor(callEveSat + 0.5);
    v199 = (callEveSat - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v200.f64[0] = NAN;
    v200.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v200), v3, v2);
    v197 = 2654435761u * *v2.i64;
    if (v199 >= 0.0)
    {
      if (v199 > 0.0)
      {
        v197 += v199;
      }
    }

    else
    {
      v197 -= fabs(v199);
    }
  }

  else
  {
    v197 = 0;
  }

  v408 = v197;
  if ((v10 & 0x80000) != 0)
  {
    callEveSun = self->_callEveSun;
    if (callEveSun < 0.0)
    {
      callEveSun = -callEveSun;
    }

    *v2.i64 = floor(callEveSun + 0.5);
    v203 = (callEveSun - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v204.f64[0] = NAN;
    v204.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v204), v3, v2);
    v201 = 2654435761u * *v2.i64;
    if (v203 >= 0.0)
    {
      if (v203 > 0.0)
      {
        v201 += v203;
      }
    }

    else
    {
      v201 -= fabs(v203);
    }
  }

  else
  {
    v201 = 0;
  }

  if ((v10 & 0x400000000000) != 0)
  {
    callNightWeekday = self->_callNightWeekday;
    if (callNightWeekday < 0.0)
    {
      callNightWeekday = -callNightWeekday;
    }

    *v2.i64 = floor(callNightWeekday + 0.5);
    v207 = (callNightWeekday - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v208.f64[0] = NAN;
    v208.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v208), v3, v2);
    v205 = 2654435761u * *v2.i64;
    if (v207 >= 0.0)
    {
      if (v207 > 0.0)
      {
        v205 += v207;
      }
    }

    else
    {
      v205 -= fabs(v207);
    }
  }

  else
  {
    v205 = 0;
  }

  v406 = v205;
  if ((v10 & 0x80000000000) != 0)
  {
    callNightFri = self->_callNightFri;
    if (callNightFri < 0.0)
    {
      callNightFri = -callNightFri;
    }

    *v2.i64 = floor(callNightFri + 0.5);
    v211 = (callNightFri - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v212.f64[0] = NAN;
    v212.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v212), v3, v2);
    v209 = 2654435761u * *v2.i64;
    if (v211 >= 0.0)
    {
      if (v211 > 0.0)
      {
        v209 += v211;
      }
    }

    else
    {
      v209 -= fabs(v211);
    }
  }

  else
  {
    v209 = 0;
  }

  if ((v10 & 0x100000000000) != 0)
  {
    callNightSat = self->_callNightSat;
    if (callNightSat < 0.0)
    {
      callNightSat = -callNightSat;
    }

    *v2.i64 = floor(callNightSat + 0.5);
    v215 = (callNightSat - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v216.f64[0] = NAN;
    v216.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v216), v3, v2);
    v213 = 2654435761u * *v2.i64;
    if (v215 >= 0.0)
    {
      if (v215 > 0.0)
      {
        v213 += v215;
      }
    }

    else
    {
      v213 -= fabs(v215);
    }
  }

  else
  {
    v213 = 0;
  }

  v404 = v213;
  if ((v10 & 0x200000000000) != 0)
  {
    callNightSun = self->_callNightSun;
    if (callNightSun < 0.0)
    {
      callNightSun = -callNightSun;
    }

    *v2.i64 = floor(callNightSun + 0.5);
    v219 = (callNightSun - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v220.f64[0] = NAN;
    v220.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v220), v3, v2);
    v217 = 2654435761u * *v2.i64;
    if (v219 >= 0.0)
    {
      if (v219 > 0.0)
      {
        v217 += v219;
      }
    }

    else
    {
      v217 -= fabs(v219);
    }
  }

  else
  {
    v217 = 0;
  }

  if ((v10 & 0x100) != 0)
  {
    callDurMorningWeekday = self->_callDurMorningWeekday;
    if (callDurMorningWeekday < 0.0)
    {
      callDurMorningWeekday = -callDurMorningWeekday;
    }

    *v2.i64 = floor(callDurMorningWeekday + 0.5);
    v223 = (callDurMorningWeekday - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v224.f64[0] = NAN;
    v224.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v224), v3, v2);
    v221 = 2654435761u * *v2.i64;
    if (v223 >= 0.0)
    {
      if (v223 > 0.0)
      {
        v221 += v223;
      }
    }

    else
    {
      v221 -= fabs(v223);
    }
  }

  else
  {
    v221 = 0;
  }

  v402 = v221;
  v418 = v153;
  if ((v10 & 0x20) != 0)
  {
    callDurMorningFri = self->_callDurMorningFri;
    if (callDurMorningFri < 0.0)
    {
      callDurMorningFri = -callDurMorningFri;
    }

    *v2.i64 = floor(callDurMorningFri + 0.5);
    v227 = (callDurMorningFri - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v228.f64[0] = NAN;
    v228.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v228), v3, v2);
    v225 = 2654435761u * *v2.i64;
    if (v227 >= 0.0)
    {
      if (v227 > 0.0)
      {
        v225 += v227;
      }
    }

    else
    {
      v225 -= fabs(v227);
    }
  }

  else
  {
    v225 = 0;
  }

  v422 = v140;
  if ((v10 & 0x40) != 0)
  {
    callDurMorningSat = self->_callDurMorningSat;
    if (callDurMorningSat < 0.0)
    {
      callDurMorningSat = -callDurMorningSat;
    }

    *v2.i64 = floor(callDurMorningSat + 0.5);
    v231 = (callDurMorningSat - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v232.f64[0] = NAN;
    v232.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v232), v3, v2);
    v229 = 2654435761u * *v2.i64;
    if (v231 >= 0.0)
    {
      if (v231 > 0.0)
      {
        v229 += v231;
      }
    }

    else
    {
      v229 -= fabs(v231);
    }
  }

  else
  {
    v229 = 0;
  }

  v401 = v229;
  if ((v10 & 0x80) != 0)
  {
    callDurMorningSun = self->_callDurMorningSun;
    if (callDurMorningSun < 0.0)
    {
      callDurMorningSun = -callDurMorningSun;
    }

    *v2.i64 = floor(callDurMorningSun + 0.5);
    v235 = (callDurMorningSun - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v236.f64[0] = NAN;
    v236.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v236), v3, v2);
    v233 = 2654435761u * *v2.i64;
    if (v235 >= 0.0)
    {
      if (v235 > 0.0)
      {
        v233 += v235;
      }
    }

    else
    {
      v233 -= fabs(v235);
    }
  }

  else
  {
    v233 = 0;
  }

  if ((v10 & 0x10000) != 0)
  {
    callDurNoonWeekday = self->_callDurNoonWeekday;
    if (callDurNoonWeekday < 0.0)
    {
      callDurNoonWeekday = -callDurNoonWeekday;
    }

    *v2.i64 = floor(callDurNoonWeekday + 0.5);
    v239 = (callDurNoonWeekday - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v240.f64[0] = NAN;
    v240.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v240), v3, v2);
    v237 = 2654435761u * *v2.i64;
    if (v239 >= 0.0)
    {
      if (v239 > 0.0)
      {
        v237 += v239;
      }
    }

    else
    {
      v237 -= fabs(v239);
    }
  }

  else
  {
    v237 = 0;
  }

  v399 = v237;
  if ((v10 & 0x2000) != 0)
  {
    callDurNoonFri = self->_callDurNoonFri;
    if (callDurNoonFri < 0.0)
    {
      callDurNoonFri = -callDurNoonFri;
    }

    *v2.i64 = floor(callDurNoonFri + 0.5);
    v243 = (callDurNoonFri - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v244.f64[0] = NAN;
    v244.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v244), v3, v2);
    v241 = 2654435761u * *v2.i64;
    if (v243 >= 0.0)
    {
      if (v243 > 0.0)
      {
        v241 += v243;
      }
    }

    else
    {
      v241 -= fabs(v243);
    }
  }

  else
  {
    v241 = 0;
  }

  if ((v10 & 0x4000) != 0)
  {
    callDurNoonSat = self->_callDurNoonSat;
    if (callDurNoonSat < 0.0)
    {
      callDurNoonSat = -callDurNoonSat;
    }

    *v2.i64 = floor(callDurNoonSat + 0.5);
    v247 = (callDurNoonSat - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v248.f64[0] = NAN;
    v248.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v248), v3, v2);
    v245 = 2654435761u * *v2.i64;
    if (v247 >= 0.0)
    {
      if (v247 > 0.0)
      {
        v245 += v247;
      }
    }

    else
    {
      v245 -= fabs(v247);
    }
  }

  else
  {
    v245 = 0;
  }

  v398 = v245;
  if ((v10 & 0x8000) != 0)
  {
    callDurNoonSun = self->_callDurNoonSun;
    if (callDurNoonSun < 0.0)
    {
      callDurNoonSun = -callDurNoonSun;
    }

    *v2.i64 = floor(callDurNoonSun + 0.5);
    v252 = (callDurNoonSun - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v253.f64[0] = NAN;
    v253.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v253), v3, v2);
    v249 = 2654435761u * *v2.i64;
    v250 = v145;
    if (v252 >= 0.0)
    {
      if (v252 > 0.0)
      {
        v249 += v252;
      }
    }

    else
    {
      v249 -= fabs(v252);
    }
  }

  else
  {
    v249 = 0;
    v250 = v145;
  }

  v397 = v249;
  if ((v10 & 0x10) != 0)
  {
    callDurEveWeekday = self->_callDurEveWeekday;
    if (callDurEveWeekday < 0.0)
    {
      callDurEveWeekday = -callDurEveWeekday;
    }

    *v2.i64 = floor(callDurEveWeekday + 0.5);
    v256 = (callDurEveWeekday - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v257.f64[0] = NAN;
    v257.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v257), v3, v2);
    v254 = 2654435761u * *v2.i64;
    if (v256 >= 0.0)
    {
      if (v256 > 0.0)
      {
        v254 += v256;
      }
    }

    else
    {
      v254 -= fabs(v256);
    }
  }

  else
  {
    v254 = 0;
  }

  if ((v10 & 2) != 0)
  {
    callDurEveFri = self->_callDurEveFri;
    if (callDurEveFri < 0.0)
    {
      callDurEveFri = -callDurEveFri;
    }

    *v2.i64 = floor(callDurEveFri + 0.5);
    v260 = (callDurEveFri - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v261.f64[0] = NAN;
    v261.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v261), v3, v2);
    v258 = 2654435761u * *v2.i64;
    if (v260 >= 0.0)
    {
      if (v260 > 0.0)
      {
        v258 += v260;
      }
    }

    else
    {
      v258 -= fabs(v260);
    }
  }

  else
  {
    v258 = 0;
  }

  v396 = v258;
  if ((v10 & 4) != 0)
  {
    callDurEveSat = self->_callDurEveSat;
    if (callDurEveSat < 0.0)
    {
      callDurEveSat = -callDurEveSat;
    }

    *v2.i64 = floor(callDurEveSat + 0.5);
    v264 = (callDurEveSat - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v265.f64[0] = NAN;
    v265.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v265), v3, v2);
    v262 = 2654435761u * *v2.i64;
    if (v264 >= 0.0)
    {
      if (v264 > 0.0)
      {
        v262 += v264;
      }
    }

    else
    {
      v262 -= fabs(v264);
    }
  }

  else
  {
    v262 = 0;
  }

  if ((v10 & 8) != 0)
  {
    callDurEveSun = self->_callDurEveSun;
    if (callDurEveSun < 0.0)
    {
      callDurEveSun = -callDurEveSun;
    }

    *v2.i64 = floor(callDurEveSun + 0.5);
    v268 = (callDurEveSun - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v269.f64[0] = NAN;
    v269.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v269), v3, v2);
    v266 = 2654435761u * *v2.i64;
    if (v268 >= 0.0)
    {
      if (v268 > 0.0)
      {
        v266 += v268;
      }
    }

    else
    {
      v266 -= fabs(v268);
    }
  }

  else
  {
    v266 = 0;
  }

  v395 = v266;
  if ((v10 & 0x1000) != 0)
  {
    callDurNightWeekday = self->_callDurNightWeekday;
    if (callDurNightWeekday < 0.0)
    {
      callDurNightWeekday = -callDurNightWeekday;
    }

    *v2.i64 = floor(callDurNightWeekday + 0.5);
    v272 = (callDurNightWeekday - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v273.f64[0] = NAN;
    v273.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v273), v3, v2);
    v270 = 2654435761u * *v2.i64;
    if (v272 >= 0.0)
    {
      if (v272 > 0.0)
      {
        v270 += v272;
      }
    }

    else
    {
      v270 -= fabs(v272);
    }
  }

  else
  {
    v270 = 0;
  }

  if ((v10 & 0x200) != 0)
  {
    callDurNightFri = self->_callDurNightFri;
    if (callDurNightFri < 0.0)
    {
      callDurNightFri = -callDurNightFri;
    }

    *v2.i64 = floor(callDurNightFri + 0.5);
    v276 = (callDurNightFri - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v277.f64[0] = NAN;
    v277.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v277), v3, v2);
    v274 = 2654435761u * *v2.i64;
    if (v276 >= 0.0)
    {
      if (v276 > 0.0)
      {
        v274 += v276;
      }
    }

    else
    {
      v274 -= fabs(v276);
    }
  }

  else
  {
    v274 = 0;
  }

  v393 = v274;
  if ((v10 & 0x400) != 0)
  {
    callDurNightSat = self->_callDurNightSat;
    if (callDurNightSat < 0.0)
    {
      callDurNightSat = -callDurNightSat;
    }

    *v2.i64 = floor(callDurNightSat + 0.5);
    v280 = (callDurNightSat - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v281.f64[0] = NAN;
    v281.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v281), v3, v2);
    v278 = 2654435761u * *v2.i64;
    if (v280 >= 0.0)
    {
      if (v280 > 0.0)
      {
        v278 += v280;
      }
    }

    else
    {
      v278 -= fabs(v280);
    }
  }

  else
  {
    v278 = 0;
  }

  v282 = v161;
  if ((v10 & 0x800) != 0)
  {
    callDurNightSun = self->_callDurNightSun;
    if (callDurNightSun < 0.0)
    {
      callDurNightSun = -callDurNightSun;
    }

    *v2.i64 = floor(callDurNightSun + 0.5);
    v285 = (callDurNightSun - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v286.f64[0] = NAN;
    v286.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v286), v3, v2);
    v283 = 2654435761u * *v2.i64;
    if (v285 >= 0.0)
    {
      if (v285 > 0.0)
      {
        v283 += v285;
      }
    }

    else
    {
      v283 -= fabs(v285);
    }
  }

  else
  {
    v283 = 0;
  }

  v391 = v283;
  if ((v10 & 0x10000000) != 0)
  {
    callLongMorningWeekday = self->_callLongMorningWeekday;
    if (callLongMorningWeekday < 0.0)
    {
      callLongMorningWeekday = -callLongMorningWeekday;
    }

    *v2.i64 = floor(callLongMorningWeekday + 0.5);
    v289 = (callLongMorningWeekday - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v290.f64[0] = NAN;
    v290.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v290), v3, v2);
    v287 = 2654435761u * *v2.i64;
    if (v289 >= 0.0)
    {
      if (v289 > 0.0)
      {
        v287 += v289;
      }
    }

    else
    {
      v287 -= fabs(v289);
    }
  }

  else
  {
    v287 = 0;
  }

  if ((v10 & 0x2000000) != 0)
  {
    callLongMorningFri = self->_callLongMorningFri;
    if (callLongMorningFri < 0.0)
    {
      callLongMorningFri = -callLongMorningFri;
    }

    *v2.i64 = floor(callLongMorningFri + 0.5);
    v293 = (callLongMorningFri - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v294.f64[0] = NAN;
    v294.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v294), v3, v2);
    v291 = 2654435761u * *v2.i64;
    if (v293 >= 0.0)
    {
      if (v293 > 0.0)
      {
        v291 += v293;
      }
    }

    else
    {
      v291 -= fabs(v293);
    }
  }

  else
  {
    v291 = 0;
  }

  v389 = v291;
  if ((v10 & 0x4000000) != 0)
  {
    callLongMorningSat = self->_callLongMorningSat;
    if (callLongMorningSat < 0.0)
    {
      callLongMorningSat = -callLongMorningSat;
    }

    *v2.i64 = floor(callLongMorningSat + 0.5);
    v297 = (callLongMorningSat - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v298.f64[0] = NAN;
    v298.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v298), v3, v2);
    v295 = 2654435761u * *v2.i64;
    if (v297 >= 0.0)
    {
      if (v297 > 0.0)
      {
        v295 += v297;
      }
    }

    else
    {
      v295 -= fabs(v297);
    }
  }

  else
  {
    v295 = 0;
  }

  if ((v10 & 0x8000000) != 0)
  {
    callLongMorningSun = self->_callLongMorningSun;
    if (callLongMorningSun < 0.0)
    {
      callLongMorningSun = -callLongMorningSun;
    }

    *v2.i64 = floor(callLongMorningSun + 0.5);
    v301 = (callLongMorningSun - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v302.f64[0] = NAN;
    v302.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v302), v3, v2);
    v299 = 2654435761u * *v2.i64;
    if (v301 >= 0.0)
    {
      if (v301 > 0.0)
      {
        v299 += v301;
      }
    }

    else
    {
      v299 -= fabs(v301);
    }
  }

  else
  {
    v299 = 0;
  }

  v387 = v299;
  if ((v10 & 0x1000000000) != 0)
  {
    callLongNoonWeekday = self->_callLongNoonWeekday;
    if (callLongNoonWeekday < 0.0)
    {
      callLongNoonWeekday = -callLongNoonWeekday;
    }

    *v2.i64 = floor(callLongNoonWeekday + 0.5);
    v305 = (callLongNoonWeekday - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v306.f64[0] = NAN;
    v306.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v306), v3, v2);
    v303 = 2654435761u * *v2.i64;
    if (v305 >= 0.0)
    {
      if (v305 > 0.0)
      {
        v303 += v305;
      }
    }

    else
    {
      v303 -= fabs(v305);
    }
  }

  else
  {
    v303 = 0;
  }

  if ((v10 & 0x200000000) != 0)
  {
    callLongNoonFri = self->_callLongNoonFri;
    if (callLongNoonFri < 0.0)
    {
      callLongNoonFri = -callLongNoonFri;
    }

    *v2.i64 = floor(callLongNoonFri + 0.5);
    v309 = (callLongNoonFri - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v310.f64[0] = NAN;
    v310.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v310), v3, v2);
    v307 = 2654435761u * *v2.i64;
    if (v309 >= 0.0)
    {
      if (v309 > 0.0)
      {
        v307 += v309;
      }
    }

    else
    {
      v307 -= fabs(v309);
    }
  }

  else
  {
    v307 = 0;
  }

  v385 = v307;
  if ((v10 & 0x400000000) != 0)
  {
    callLongNoonSat = self->_callLongNoonSat;
    if (callLongNoonSat < 0.0)
    {
      callLongNoonSat = -callLongNoonSat;
    }

    *v2.i64 = floor(callLongNoonSat + 0.5);
    v313 = (callLongNoonSat - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v314.f64[0] = NAN;
    v314.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v314), v3, v2);
    v311 = 2654435761u * *v2.i64;
    if (v313 >= 0.0)
    {
      if (v313 > 0.0)
      {
        v311 += v313;
      }
    }

    else
    {
      v311 -= fabs(v313);
    }
  }

  else
  {
    v311 = 0;
  }

  v315 = v169;
  if ((v10 & 0x800000000) != 0)
  {
    callLongNoonSun = self->_callLongNoonSun;
    if (callLongNoonSun < 0.0)
    {
      callLongNoonSun = -callLongNoonSun;
    }

    *v2.i64 = floor(callLongNoonSun + 0.5);
    v318 = (callLongNoonSun - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v319.f64[0] = NAN;
    v319.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v319), v3, v2);
    v316 = 2654435761u * *v2.i64;
    if (v318 >= 0.0)
    {
      if (v318 > 0.0)
      {
        v316 += v318;
      }
    }

    else
    {
      v316 -= fabs(v318);
    }
  }

  else
  {
    v316 = 0;
  }

  v383 = v316;
  if ((v10 & 0x1000000) != 0)
  {
    callLongEveWeekday = self->_callLongEveWeekday;
    if (callLongEveWeekday < 0.0)
    {
      callLongEveWeekday = -callLongEveWeekday;
    }

    *v2.i64 = floor(callLongEveWeekday + 0.5);
    v322 = (callLongEveWeekday - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v323.f64[0] = NAN;
    v323.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v323), v3, v2);
    v320 = 2654435761u * *v2.i64;
    if (v322 >= 0.0)
    {
      if (v322 > 0.0)
      {
        v320 += v322;
      }
    }

    else
    {
      v320 -= fabs(v322);
    }
  }

  else
  {
    v320 = 0;
  }

  if ((v10 & 0x200000) != 0)
  {
    callLongEveFri = self->_callLongEveFri;
    if (callLongEveFri < 0.0)
    {
      callLongEveFri = -callLongEveFri;
    }

    *v2.i64 = floor(callLongEveFri + 0.5);
    v326 = (callLongEveFri - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v327.f64[0] = NAN;
    v327.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v327), v3, v2);
    v324 = 2654435761u * *v2.i64;
    if (v326 >= 0.0)
    {
      if (v326 > 0.0)
      {
        v324 += v326;
      }
    }

    else
    {
      v324 -= fabs(v326);
    }
  }

  else
  {
    v324 = 0;
  }

  v381 = v324;
  if ((v10 & 0x400000) != 0)
  {
    callLongEveSat = self->_callLongEveSat;
    if (callLongEveSat < 0.0)
    {
      callLongEveSat = -callLongEveSat;
    }

    *v2.i64 = floor(callLongEveSat + 0.5);
    v330 = (callLongEveSat - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v331.f64[0] = NAN;
    v331.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v331), v3, v2);
    v328 = 2654435761u * *v2.i64;
    if (v330 >= 0.0)
    {
      if (v330 > 0.0)
      {
        v328 += v330;
      }
    }

    else
    {
      v328 -= fabs(v330);
    }
  }

  else
  {
    v328 = 0;
  }

  if ((v10 & 0x800000) != 0)
  {
    callLongEveSun = self->_callLongEveSun;
    if (callLongEveSun < 0.0)
    {
      callLongEveSun = -callLongEveSun;
    }

    *v2.i64 = floor(callLongEveSun + 0.5);
    v334 = (callLongEveSun - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v335.f64[0] = NAN;
    v335.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v335), v3, v2);
    v332 = 2654435761u * *v2.i64;
    if (v334 >= 0.0)
    {
      if (v334 > 0.0)
      {
        v332 += v334;
      }
    }

    else
    {
      v332 -= fabs(v334);
    }
  }

  else
  {
    v332 = 0;
  }

  v379 = v332;
  if ((v10 & 0x100000000) != 0)
  {
    callLongNightWeekday = self->_callLongNightWeekday;
    if (callLongNightWeekday < 0.0)
    {
      callLongNightWeekday = -callLongNightWeekday;
    }

    *v2.i64 = floor(callLongNightWeekday + 0.5);
    v338 = (callLongNightWeekday - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v339.f64[0] = NAN;
    v339.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v339), v3, v2);
    v336 = 2654435761u * *v2.i64;
    if (v338 >= 0.0)
    {
      if (v338 > 0.0)
      {
        v336 += v338;
      }
    }

    else
    {
      v336 -= fabs(v338);
    }
  }

  else
  {
    v336 = 0;
  }

  if ((v10 & 0x20000000) != 0)
  {
    callLongNightFri = self->_callLongNightFri;
    if (callLongNightFri < 0.0)
    {
      callLongNightFri = -callLongNightFri;
    }

    *v2.i64 = floor(callLongNightFri + 0.5);
    v342 = (callLongNightFri - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v343.f64[0] = NAN;
    v343.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v343), v3, v2);
    v340 = 2654435761u * *v2.i64;
    if (v342 >= 0.0)
    {
      if (v342 > 0.0)
      {
        v340 += v342;
      }
    }

    else
    {
      v340 -= fabs(v342);
    }
  }

  else
  {
    v340 = 0;
  }

  v377 = v340;
  v378 = v336;
  if ((v10 & 0x40000000) != 0)
  {
    callLongNightSat = self->_callLongNightSat;
    if (callLongNightSat < 0.0)
    {
      callLongNightSat = -callLongNightSat;
    }

    *v2.i64 = floor(callLongNightSat + 0.5);
    v346 = (callLongNightSat - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v347.f64[0] = NAN;
    v347.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v347), v3, v2);
    v344 = 2654435761u * *v2.i64;
    if (v346 >= 0.0)
    {
      if (v346 > 0.0)
      {
        v344 += v346;
      }
    }

    else
    {
      v344 -= fabs(v346);
    }
  }

  else
  {
    v344 = 0;
  }

  v386 = v303;
  v388 = v295;
  v394 = v270;
  v392 = v278;
  if ((v10 & 0x80000000) != 0)
  {
    v349 = v437;
    v351 = v440;
    callLongNightSun = self->_callLongNightSun;
    if (callLongNightSun < 0.0)
    {
      callLongNightSun = -callLongNightSun;
    }

    *v2.i64 = floor(callLongNightSun + 0.5);
    v354 = (callLongNightSun - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v355.f64[0] = NAN;
    v355.f64[1] = NAN;
    v352 = 2654435761u * *vbslq_s8(vnegq_f64(v355), v3, v2).i64;
    if (v354 >= 0.0)
    {
      v350 = v439;
      if (v354 > 0.0)
      {
        v352 += v354;
      }
    }

    else
    {
      v350 = v439;
      v352 -= fabs(v354);
    }
  }

  else
  {
    v349 = v437;
    v350 = v439;
    v351 = v440;
    v352 = 0;
  }

  v438 = v344;
  v420 = v250;
  v416 = v282;
  v414 = v315;
  v411 = v185;
  v409 = v193;
  v407 = v201;
  v405 = v209;
  v403 = v217;
  v400 = v233;
  v390 = v287;
  v384 = v311;
  v382 = v320;
  v380 = v328;
  v376 = v352;
  if ((v5 & 0x20000000) != 0)
  {
    v357 = [(NSString *)self->_contactRelation hash];
  }

  else
  {
    v357 = [(NSString *)self->_contactRelation hash];
  }

  v358 = *(v433 + 1);
  if ((v358 & 0x10000000) != 0)
  {
    v359 = 2654435761 * self->_contactFamilyName;
  }

  else
  {
    v359 = 0;
  }

  if ((v358 & 0x4000000000) != 0)
  {
    v360 = 2654435761 * self->_contactParent;
  }

  else
  {
    v360 = 0;
  }

  v361 = v350;
  v362 = v349;
  if ((v358 & 0x4000000) != 0)
  {
    selfCopy2 = self;
    v363 = 2654435761 * self->_contactEmergency;
    v364 = v449;
  }

  else
  {
    v363 = 0;
    v364 = v449;
    selfCopy2 = self;
  }

  if ((v358 & 0x8000000) != 0)
  {
    v366 = 2654435761 * selfCopy2->_contactEmergencyFamily;
    if ((v358 & 0x1000000000) != 0)
    {
LABEL_736:
      v367 = 2654435761 * selfCopy2->_contactInHome;
      if ((v358 & 0x2000000000) != 0)
      {
        goto LABEL_737;
      }

      goto LABEL_745;
    }
  }

  else
  {
    v366 = 0;
    if ((v358 & 0x1000000000) != 0)
    {
      goto LABEL_736;
    }
  }

  v367 = 0;
  if ((v358 & 0x2000000000) != 0)
  {
LABEL_737:
    v368 = 2654435761 * selfCopy2->_contactInPhotos;
    if ((v358 & 0x80000000) != 0)
    {
      goto LABEL_738;
    }

    goto LABEL_746;
  }

LABEL_745:
  v368 = 0;
  if ((v358 & 0x80000000) != 0)
  {
LABEL_738:
    v369 = 2654435761 * selfCopy2->_contactInAirDrop;
    if ((v358 & 0x100000000) != 0)
    {
      goto LABEL_739;
    }

    goto LABEL_747;
  }

LABEL_746:
  v369 = 0;
  if ((v358 & 0x100000000) != 0)
  {
LABEL_739:
    v370 = 2654435761 * selfCopy2->_contactInAirDropAtHome;
    if ((v358 & 0x400000000) != 0)
    {
      goto LABEL_740;
    }

    goto LABEL_748;
  }

LABEL_747:
  v370 = 0;
  if ((v358 & 0x400000000) != 0)
  {
LABEL_740:
    v371 = 2654435761 * selfCopy2->_contactInFMFFollowingMe;
    if ((v358 & 0x800000000) != 0)
    {
      goto LABEL_741;
    }

LABEL_749:
    v372 = 0;
    if ((v358 & 0x200000000) != 0)
    {
      goto LABEL_742;
    }

LABEL_750:
    v373 = 0;
    return v429 ^ v434 ^ v430 ^ v451 ^ v431 ^ v452 ^ v453 ^ v455 ^ v457 ^ v458 ^ v461 ^ v460 ^ v459 ^ v444 ^ v443 ^ v456 ^ v436 ^ v442 ^ v432 ^ v454 ^ v441 ^ v177 ^ v351 ^ v361 ^ v362 ^ v364 ^ v450 ^ v448 ^ v435 ^ v447 ^ v428 ^ v446 ^ v427 ^ v445 ^ v426 ^ v425 ^ v424 ^ v423 ^ v422 ^ v421 ^ v420 ^ v419 ^ v418 ^ v417 ^ v416 ^ v415 ^ v414 ^ v413 ^ v177 ^ v412 ^ v411 ^ v410 ^ v409 ^ v408 ^ v407 ^ v406 ^ v405 ^ v404 ^ v403 ^ v402 ^ v225 ^ v401 ^ v400 ^ v399 ^ v241 ^ v398 ^ v397 ^ v254 ^ v396 ^ v262 ^ v395 ^ v394 ^ v393 ^ v392 ^ v391 ^ v390 ^ v389 ^ v388 ^ v387 ^ v386 ^ v385 ^ v384 ^ v383 ^ v382 ^ v381 ^ v380 ^ v379 ^ v378 ^ v377 ^ v438 ^ v376 ^ v375 ^ v357 ^ v359 ^ v360 ^ v363 ^ v366 ^ v367 ^ v368 ^ v369 ^ v370 ^ v371 ^ v372 ^ v373 ^ (2654435761u * selfCopy2->_mailIntelligenceContactId);
  }

LABEL_748:
  v371 = 0;
  if ((v358 & 0x800000000) == 0)
  {
    goto LABEL_749;
  }

LABEL_741:
  v372 = 2654435761 * selfCopy2->_contactInFMFSharingWithMe;
  if ((v358 & 0x200000000) == 0)
  {
    goto LABEL_750;
  }

LABEL_742:
  v373 = 2654435761 * selfCopy2->_contactInFMFFavorite;
  return v429 ^ v434 ^ v430 ^ v451 ^ v431 ^ v452 ^ v453 ^ v455 ^ v457 ^ v458 ^ v461 ^ v460 ^ v459 ^ v444 ^ v443 ^ v456 ^ v436 ^ v442 ^ v432 ^ v454 ^ v441 ^ v177 ^ v351 ^ v361 ^ v362 ^ v364 ^ v450 ^ v448 ^ v435 ^ v447 ^ v428 ^ v446 ^ v427 ^ v445 ^ v426 ^ v425 ^ v424 ^ v423 ^ v422 ^ v421 ^ v420 ^ v419 ^ v418 ^ v417 ^ v416 ^ v415 ^ v414 ^ v413 ^ v177 ^ v412 ^ v411 ^ v410 ^ v409 ^ v408 ^ v407 ^ v406 ^ v405 ^ v404 ^ v403 ^ v402 ^ v225 ^ v401 ^ v400 ^ v399 ^ v241 ^ v398 ^ v397 ^ v254 ^ v396 ^ v262 ^ v395 ^ v394 ^ v393 ^ v392 ^ v391 ^ v390 ^ v389 ^ v388 ^ v387 ^ v386 ^ v385 ^ v384 ^ v383 ^ v382 ^ v381 ^ v380 ^ v379 ^ v378 ^ v377 ^ v438 ^ v376 ^ v375 ^ v357 ^ v359 ^ v360 ^ v363 ^ v366 ^ v367 ^ v368 ^ v369 ^ v370 ^ v371 ^ v372 ^ v373 ^ (2654435761u * selfCopy2->_mailIntelligenceContactId);
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = (fromCopy + 792);
  v6 = *(fromCopy + 100);
  if ((v6 & 0x80) != 0)
  {
    self->_firstPartyMsgTotal = *(fromCopy + 72);
    *(&self->_has + 1) |= 0x80uLL;
    v6 = *(fromCopy + 100);
  }

  if ((v6 & 0x40) != 0)
  {
    self->_firstPartyMsgOutgoingRatio = *(fromCopy + 71);
    *(&self->_has + 1) |= 0x40uLL;
  }

  v7 = *v5;
  if ((*v5 & 0x2000000000000000) != 0)
  {
    self->_firstPartyMsgMorningWeekday = *(fromCopy + 62);
    *&self->_has |= 0x2000000000000000uLL;
    v7 = *(fromCopy + 99);
    if ((v7 & 0x400000000000000) == 0)
    {
LABEL_7:
      if ((v7 & 0x800000000000000) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_126;
    }
  }

  else if ((v7 & 0x400000000000000) == 0)
  {
    goto LABEL_7;
  }

  self->_firstPartyMsgMorningFri = *(fromCopy + 59);
  *&self->_has |= 0x400000000000000uLL;
  v7 = *(fromCopy + 99);
  if ((v7 & 0x800000000000000) == 0)
  {
LABEL_8:
    if ((v7 & 0x1000000000000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_126:
  self->_firstPartyMsgMorningSat = *(fromCopy + 60);
  *&self->_has |= 0x800000000000000uLL;
  if ((*(fromCopy + 99) & 0x1000000000000000) != 0)
  {
LABEL_9:
    self->_firstPartyMsgMorningSun = *(fromCopy + 61);
    *&self->_has |= 0x1000000000000000uLL;
  }

LABEL_10:
  v8 = *(fromCopy + 100);
  if ((v8 & 0x20) != 0)
  {
    self->_firstPartyMsgNoonWeekday = *(fromCopy + 70);
    *(&self->_has + 1) |= 0x20uLL;
    v8 = *(fromCopy + 100);
    if ((v8 & 4) == 0)
    {
LABEL_12:
      if ((v8 & 8) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_130;
    }
  }

  else if ((v8 & 4) == 0)
  {
    goto LABEL_12;
  }

  self->_firstPartyMsgNoonFri = *(fromCopy + 67);
  *(&self->_has + 1) |= 4uLL;
  v8 = *(fromCopy + 100);
  if ((v8 & 8) == 0)
  {
LABEL_13:
    if ((v8 & 0x10) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_130:
  self->_firstPartyMsgNoonSat = *(fromCopy + 68);
  *(&self->_has + 1) |= 8uLL;
  if ((*(fromCopy + 100) & 0x10) != 0)
  {
LABEL_14:
    self->_firstPartyMsgNoonSun = *(fromCopy + 69);
    *(&self->_has + 1) |= 0x10uLL;
  }

LABEL_15:
  v9 = *v5;
  if ((*v5 & 0x200000000000000) != 0)
  {
    self->_firstPartyMsgEveWeekday = *(fromCopy + 58);
    *&self->_has |= 0x200000000000000uLL;
    v9 = *(fromCopy + 99);
    if ((v9 & 0x40000000000000) == 0)
    {
LABEL_17:
      if ((v9 & 0x80000000000000) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_134;
    }
  }

  else if ((v9 & 0x40000000000000) == 0)
  {
    goto LABEL_17;
  }

  self->_firstPartyMsgEveFri = *(fromCopy + 55);
  *&self->_has |= 0x40000000000000uLL;
  v9 = *(fromCopy + 99);
  if ((v9 & 0x80000000000000) == 0)
  {
LABEL_18:
    if ((v9 & 0x100000000000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_134:
  self->_firstPartyMsgEveSat = *(fromCopy + 56);
  *&self->_has |= 0x80000000000000uLL;
  if ((*(fromCopy + 99) & 0x100000000000000) != 0)
  {
LABEL_19:
    self->_firstPartyMsgEveSun = *(fromCopy + 57);
    *&self->_has |= 0x100000000000000uLL;
  }

LABEL_20:
  if ((fromCopy[800] & 2) != 0)
  {
    self->_firstPartyMsgNightWeekday = *(fromCopy + 66);
    *(&self->_has + 1) |= 2uLL;
  }

  v10 = *v5;
  if ((*v5 & 0x4000000000000000) != 0)
  {
    self->_firstPartyMsgNightFri = *(fromCopy + 63);
    *&self->_has |= 0x4000000000000000uLL;
    v10 = *(fromCopy + 99);
  }

  if (v10 < 0)
  {
    self->_firstPartyMsgNightSat = *(fromCopy + 64);
    *&self->_has |= 0x8000000000000000;
  }

  v11 = *(fromCopy + 100);
  if (v11)
  {
    self->_firstPartyMsgNightSun = *(fromCopy + 65);
    *(&self->_has + 1) |= 1uLL;
    v11 = *(fromCopy + 100);
    if ((v11 & 0x1000000) == 0)
    {
LABEL_28:
      if ((v11 & 0x8000) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_138;
    }
  }

  else if ((v11 & 0x1000000) == 0)
  {
    goto LABEL_28;
  }

  self->_thirdPartyMsgTotal = *(fromCopy + 90);
  *(&self->_has + 1) |= 0x1000000uLL;
  v11 = *(fromCopy + 100);
  if ((v11 & 0x8000) == 0)
  {
LABEL_29:
    if ((v11 & 0x1000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_139;
  }

LABEL_138:
  self->_thirdPartyMsgMorningWeekday = *(fromCopy + 81);
  *(&self->_has + 1) |= 0x8000uLL;
  v11 = *(fromCopy + 100);
  if ((v11 & 0x1000) == 0)
  {
LABEL_30:
    if ((v11 & 0x2000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_140;
  }

LABEL_139:
  self->_thirdPartyMsgMorningFri = *(fromCopy + 78);
  *(&self->_has + 1) |= 0x1000uLL;
  v11 = *(fromCopy + 100);
  if ((v11 & 0x2000) == 0)
  {
LABEL_31:
    if ((v11 & 0x4000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_141;
  }

LABEL_140:
  self->_thirdPartyMsgMorningSat = *(fromCopy + 79);
  *(&self->_has + 1) |= 0x2000uLL;
  v11 = *(fromCopy + 100);
  if ((v11 & 0x4000) == 0)
  {
LABEL_32:
    if ((v11 & 0x800000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_142;
  }

LABEL_141:
  self->_thirdPartyMsgMorningSun = *(fromCopy + 80);
  *(&self->_has + 1) |= 0x4000uLL;
  v11 = *(fromCopy + 100);
  if ((v11 & 0x800000) == 0)
  {
LABEL_33:
    if ((v11 & 0x100000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_143;
  }

LABEL_142:
  self->_thirdPartyMsgNoonWeekday = *(fromCopy + 89);
  *(&self->_has + 1) |= 0x800000uLL;
  v11 = *(fromCopy + 100);
  if ((v11 & 0x100000) == 0)
  {
LABEL_34:
    if ((v11 & 0x200000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_144;
  }

LABEL_143:
  self->_thirdPartyMsgNoonFri = *(fromCopy + 86);
  *(&self->_has + 1) |= 0x100000uLL;
  v11 = *(fromCopy + 100);
  if ((v11 & 0x200000) == 0)
  {
LABEL_35:
    if ((v11 & 0x400000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_145;
  }

LABEL_144:
  self->_thirdPartyMsgNoonSat = *(fromCopy + 87);
  *(&self->_has + 1) |= 0x200000uLL;
  v11 = *(fromCopy + 100);
  if ((v11 & 0x400000) == 0)
  {
LABEL_36:
    if ((v11 & 0x800) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_146;
  }

LABEL_145:
  self->_thirdPartyMsgNoonSun = *(fromCopy + 88);
  *(&self->_has + 1) |= 0x400000uLL;
  v11 = *(fromCopy + 100);
  if ((v11 & 0x800) == 0)
  {
LABEL_37:
    if ((v11 & 0x100) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_147;
  }

LABEL_146:
  self->_thirdPartyMsgEveWeekday = *(fromCopy + 77);
  *(&self->_has + 1) |= 0x800uLL;
  v11 = *(fromCopy + 100);
  if ((v11 & 0x100) == 0)
  {
LABEL_38:
    if ((v11 & 0x200) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_148;
  }

LABEL_147:
  self->_thirdPartyMsgEveFri = *(fromCopy + 74);
  *(&self->_has + 1) |= 0x100uLL;
  v11 = *(fromCopy + 100);
  if ((v11 & 0x200) == 0)
  {
LABEL_39:
    if ((v11 & 0x400) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_149;
  }

LABEL_148:
  self->_thirdPartyMsgEveSat = *(fromCopy + 75);
  *(&self->_has + 1) |= 0x200uLL;
  v11 = *(fromCopy + 100);
  if ((v11 & 0x400) == 0)
  {
LABEL_40:
    if ((v11 & 0x80000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_150;
  }

LABEL_149:
  self->_thirdPartyMsgEveSun = *(fromCopy + 76);
  *(&self->_has + 1) |= 0x400uLL;
  v11 = *(fromCopy + 100);
  if ((v11 & 0x80000) == 0)
  {
LABEL_41:
    if ((v11 & 0x10000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_151;
  }

LABEL_150:
  self->_thirdPartyMsgNightWeekday = *(fromCopy + 85);
  *(&self->_has + 1) |= 0x80000uLL;
  v11 = *(fromCopy + 100);
  if ((v11 & 0x10000) == 0)
  {
LABEL_42:
    if ((v11 & 0x20000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_152;
  }

LABEL_151:
  self->_thirdPartyMsgNightFri = *(fromCopy + 82);
  *(&self->_has + 1) |= 0x10000uLL;
  v11 = *(fromCopy + 100);
  if ((v11 & 0x20000) == 0)
  {
LABEL_43:
    if ((v11 & 0x40000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

LABEL_152:
  self->_thirdPartyMsgNightSat = *(fromCopy + 83);
  *(&self->_has + 1) |= 0x20000uLL;
  if ((*(fromCopy + 100) & 0x40000) != 0)
  {
LABEL_44:
    self->_thirdPartyMsgNightSun = *(fromCopy + 84);
    *(&self->_has + 1) |= 0x40000uLL;
  }

LABEL_45:
  if ((fromCopy[798] & 0x10) != 0)
  {
    self->_callTotal = *(fromCopy + 53);
    *&self->_has |= 0x10000000000000uLL;
  }

  v12 = *(fromCopy + 100);
  if ((v12 & 0x2000000) != 0)
  {
    self->_callBirthday = *(fromCopy + 182);
    *(&self->_has + 1) |= 0x2000000uLL;
    v12 = *(fromCopy + 100);
  }

  if ((v12 & 0x40000000) != 0)
  {
    self->_contactFavorite = *(fromCopy + 187);
    *(&self->_has + 1) |= 0x40000000uLL;
  }

  v13 = *v5;
  if ((*v5 & 0x20000000000000) != 0)
  {
    self->_callTotalDur = *(fromCopy + 54);
    *&self->_has |= 0x20000000000000uLL;
    v13 = *(fromCopy + 99);
    if ((v13 & 0x2000000000) == 0)
    {
LABEL_53:
      if ((v13 & 0x8000000000000) == 0)
      {
        goto LABEL_54;
      }

      goto LABEL_156;
    }
  }

  else if ((v13 & 0x2000000000) == 0)
  {
    goto LABEL_53;
  }

  self->_callLongRatio = *(fromCopy + 38);
  *&self->_has |= 0x2000000000uLL;
  v13 = *(fromCopy + 99);
  if ((v13 & 0x8000000000000) == 0)
  {
LABEL_54:
    if ((v13 & 1) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_157;
  }

LABEL_156:
  self->_callOutgoingRatio = *(fromCopy + 52);
  *&self->_has |= 0x8000000000000uLL;
  v13 = *(fromCopy + 99);
  if ((v13 & 1) == 0)
  {
LABEL_55:
    if ((v13 & 0x4000000000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_158;
  }

LABEL_157:
  self->_callAvgDur = *(fromCopy + 1);
  *&self->_has |= 1uLL;
  v13 = *(fromCopy + 99);
  if ((v13 & 0x4000000000) == 0)
  {
LABEL_56:
    if ((v13 & 0x40000000000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_159;
  }

LABEL_158:
  self->_callMaxDur = *(fromCopy + 39);
  *&self->_has |= 0x4000000000uLL;
  v13 = *(fromCopy + 99);
  if ((v13 & 0x40000000000) == 0)
  {
LABEL_57:
    if ((v13 & 0x8000000000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_160;
  }

LABEL_159:
  self->_callMorningWeekday = *(fromCopy + 43);
  *&self->_has |= 0x40000000000uLL;
  v13 = *(fromCopy + 99);
  if ((v13 & 0x8000000000) == 0)
  {
LABEL_58:
    if ((v13 & 0x10000000000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_161;
  }

LABEL_160:
  self->_callMorningFri = *(fromCopy + 40);
  *&self->_has |= 0x8000000000uLL;
  v13 = *(fromCopy + 99);
  if ((v13 & 0x10000000000) == 0)
  {
LABEL_59:
    if ((v13 & 0x20000000000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_162;
  }

LABEL_161:
  self->_callMorningSat = *(fromCopy + 41);
  *&self->_has |= 0x10000000000uLL;
  v13 = *(fromCopy + 99);
  if ((v13 & 0x20000000000) == 0)
  {
LABEL_60:
    if ((v13 & 0x4000000000000) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_163;
  }

LABEL_162:
  self->_callMorningSun = *(fromCopy + 42);
  *&self->_has |= 0x20000000000uLL;
  v13 = *(fromCopy + 99);
  if ((v13 & 0x4000000000000) == 0)
  {
LABEL_61:
    if ((v13 & 0x800000000000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_164;
  }

LABEL_163:
  self->_callNoonWeekday = *(fromCopy + 51);
  *&self->_has |= 0x4000000000000uLL;
  v13 = *(fromCopy + 99);
  if ((v13 & 0x800000000000) == 0)
  {
LABEL_62:
    if ((v13 & 0x1000000000000) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_165;
  }

LABEL_164:
  self->_callNoonFri = *(fromCopy + 48);
  *&self->_has |= 0x800000000000uLL;
  v13 = *(fromCopy + 99);
  if ((v13 & 0x1000000000000) == 0)
  {
LABEL_63:
    if ((v13 & 0x2000000000000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_166;
  }

LABEL_165:
  self->_callNoonSat = *(fromCopy + 49);
  *&self->_has |= 0x1000000000000uLL;
  v13 = *(fromCopy + 99);
  if ((v13 & 0x2000000000000) == 0)
  {
LABEL_64:
    if ((v13 & 0x100000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_167;
  }

LABEL_166:
  self->_callNoonSun = *(fromCopy + 50);
  *&self->_has |= 0x2000000000000uLL;
  v13 = *(fromCopy + 99);
  if ((v13 & 0x100000) == 0)
  {
LABEL_65:
    if ((v13 & 0x20000) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_168;
  }

LABEL_167:
  self->_callEveWeekday = *(fromCopy + 21);
  *&self->_has |= 0x100000uLL;
  v13 = *(fromCopy + 99);
  if ((v13 & 0x20000) == 0)
  {
LABEL_66:
    if ((v13 & 0x40000) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_169;
  }

LABEL_168:
  self->_callEveFri = *(fromCopy + 18);
  *&self->_has |= 0x20000uLL;
  v13 = *(fromCopy + 99);
  if ((v13 & 0x40000) == 0)
  {
LABEL_67:
    if ((v13 & 0x80000) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_170;
  }

LABEL_169:
  self->_callEveSat = *(fromCopy + 19);
  *&self->_has |= 0x40000uLL;
  v13 = *(fromCopy + 99);
  if ((v13 & 0x80000) == 0)
  {
LABEL_68:
    if ((v13 & 0x400000000000) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_171;
  }

LABEL_170:
  self->_callEveSun = *(fromCopy + 20);
  *&self->_has |= 0x80000uLL;
  v13 = *(fromCopy + 99);
  if ((v13 & 0x400000000000) == 0)
  {
LABEL_69:
    if ((v13 & 0x80000000000) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_172;
  }

LABEL_171:
  self->_callNightWeekday = *(fromCopy + 47);
  *&self->_has |= 0x400000000000uLL;
  v13 = *(fromCopy + 99);
  if ((v13 & 0x80000000000) == 0)
  {
LABEL_70:
    if ((v13 & 0x100000000000) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_173;
  }

LABEL_172:
  self->_callNightFri = *(fromCopy + 44);
  *&self->_has |= 0x80000000000uLL;
  v13 = *(fromCopy + 99);
  if ((v13 & 0x100000000000) == 0)
  {
LABEL_71:
    if ((v13 & 0x200000000000) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_174;
  }

LABEL_173:
  self->_callNightSat = *(fromCopy + 45);
  *&self->_has |= 0x100000000000uLL;
  v13 = *(fromCopy + 99);
  if ((v13 & 0x200000000000) == 0)
  {
LABEL_72:
    if ((v13 & 0x100) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_175;
  }

LABEL_174:
  self->_callNightSun = *(fromCopy + 46);
  *&self->_has |= 0x200000000000uLL;
  v13 = *(fromCopy + 99);
  if ((v13 & 0x100) == 0)
  {
LABEL_73:
    if ((v13 & 0x20) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_176;
  }

LABEL_175:
  self->_callDurMorningWeekday = *(fromCopy + 9);
  *&self->_has |= 0x100uLL;
  v13 = *(fromCopy + 99);
  if ((v13 & 0x20) == 0)
  {
LABEL_74:
    if ((v13 & 0x40) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_177;
  }

LABEL_176:
  self->_callDurMorningFri = *(fromCopy + 6);
  *&self->_has |= 0x20uLL;
  v13 = *(fromCopy + 99);
  if ((v13 & 0x40) == 0)
  {
LABEL_75:
    if ((v13 & 0x80) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_178;
  }

LABEL_177:
  self->_callDurMorningSat = *(fromCopy + 7);
  *&self->_has |= 0x40uLL;
  v13 = *(fromCopy + 99);
  if ((v13 & 0x80) == 0)
  {
LABEL_76:
    if ((v13 & 0x10000) == 0)
    {
      goto LABEL_77;
    }

    goto LABEL_179;
  }

LABEL_178:
  self->_callDurMorningSun = *(fromCopy + 8);
  *&self->_has |= 0x80uLL;
  v13 = *(fromCopy + 99);
  if ((v13 & 0x10000) == 0)
  {
LABEL_77:
    if ((v13 & 0x2000) == 0)
    {
      goto LABEL_78;
    }

    goto LABEL_180;
  }

LABEL_179:
  self->_callDurNoonWeekday = *(fromCopy + 17);
  *&self->_has |= 0x10000uLL;
  v13 = *(fromCopy + 99);
  if ((v13 & 0x2000) == 0)
  {
LABEL_78:
    if ((v13 & 0x4000) == 0)
    {
      goto LABEL_79;
    }

    goto LABEL_181;
  }

LABEL_180:
  self->_callDurNoonFri = *(fromCopy + 14);
  *&self->_has |= 0x2000uLL;
  v13 = *(fromCopy + 99);
  if ((v13 & 0x4000) == 0)
  {
LABEL_79:
    if ((v13 & 0x8000) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_182;
  }

LABEL_181:
  self->_callDurNoonSat = *(fromCopy + 15);
  *&self->_has |= 0x4000uLL;
  v13 = *(fromCopy + 99);
  if ((v13 & 0x8000) == 0)
  {
LABEL_80:
    if ((v13 & 0x10) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_183;
  }

LABEL_182:
  self->_callDurNoonSun = *(fromCopy + 16);
  *&self->_has |= 0x8000uLL;
  v13 = *(fromCopy + 99);
  if ((v13 & 0x10) == 0)
  {
LABEL_81:
    if ((v13 & 2) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_184;
  }

LABEL_183:
  self->_callDurEveWeekday = *(fromCopy + 5);
  *&self->_has |= 0x10uLL;
  v13 = *(fromCopy + 99);
  if ((v13 & 2) == 0)
  {
LABEL_82:
    if ((v13 & 4) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_185;
  }

LABEL_184:
  self->_callDurEveFri = *(fromCopy + 2);
  *&self->_has |= 2uLL;
  v13 = *(fromCopy + 99);
  if ((v13 & 4) == 0)
  {
LABEL_83:
    if ((v13 & 8) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_186;
  }

LABEL_185:
  self->_callDurEveSat = *(fromCopy + 3);
  *&self->_has |= 4uLL;
  v13 = *(fromCopy + 99);
  if ((v13 & 8) == 0)
  {
LABEL_84:
    if ((v13 & 0x1000) == 0)
    {
      goto LABEL_85;
    }

    goto LABEL_187;
  }

LABEL_186:
  self->_callDurEveSun = *(fromCopy + 4);
  *&self->_has |= 8uLL;
  v13 = *(fromCopy + 99);
  if ((v13 & 0x1000) == 0)
  {
LABEL_85:
    if ((v13 & 0x200) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_188;
  }

LABEL_187:
  self->_callDurNightWeekday = *(fromCopy + 13);
  *&self->_has |= 0x1000uLL;
  v13 = *(fromCopy + 99);
  if ((v13 & 0x200) == 0)
  {
LABEL_86:
    if ((v13 & 0x400) == 0)
    {
      goto LABEL_87;
    }

    goto LABEL_189;
  }

LABEL_188:
  self->_callDurNightFri = *(fromCopy + 10);
  *&self->_has |= 0x200uLL;
  v13 = *(fromCopy + 99);
  if ((v13 & 0x400) == 0)
  {
LABEL_87:
    if ((v13 & 0x800) == 0)
    {
      goto LABEL_88;
    }

    goto LABEL_190;
  }

LABEL_189:
  self->_callDurNightSat = *(fromCopy + 11);
  *&self->_has |= 0x400uLL;
  v13 = *(fromCopy + 99);
  if ((v13 & 0x800) == 0)
  {
LABEL_88:
    if ((v13 & 0x10000000) == 0)
    {
      goto LABEL_89;
    }

    goto LABEL_191;
  }

LABEL_190:
  self->_callDurNightSun = *(fromCopy + 12);
  *&self->_has |= 0x800uLL;
  v13 = *(fromCopy + 99);
  if ((v13 & 0x10000000) == 0)
  {
LABEL_89:
    if ((v13 & 0x2000000) == 0)
    {
      goto LABEL_90;
    }

    goto LABEL_192;
  }

LABEL_191:
  self->_callLongMorningWeekday = *(fromCopy + 29);
  *&self->_has |= 0x10000000uLL;
  v13 = *(fromCopy + 99);
  if ((v13 & 0x2000000) == 0)
  {
LABEL_90:
    if ((v13 & 0x4000000) == 0)
    {
      goto LABEL_91;
    }

    goto LABEL_193;
  }

LABEL_192:
  self->_callLongMorningFri = *(fromCopy + 26);
  *&self->_has |= 0x2000000uLL;
  v13 = *(fromCopy + 99);
  if ((v13 & 0x4000000) == 0)
  {
LABEL_91:
    if ((v13 & 0x8000000) == 0)
    {
      goto LABEL_92;
    }

    goto LABEL_194;
  }

LABEL_193:
  self->_callLongMorningSat = *(fromCopy + 27);
  *&self->_has |= 0x4000000uLL;
  v13 = *(fromCopy + 99);
  if ((v13 & 0x8000000) == 0)
  {
LABEL_92:
    if ((v13 & 0x1000000000) == 0)
    {
      goto LABEL_93;
    }

    goto LABEL_195;
  }

LABEL_194:
  self->_callLongMorningSun = *(fromCopy + 28);
  *&self->_has |= 0x8000000uLL;
  v13 = *(fromCopy + 99);
  if ((v13 & 0x1000000000) == 0)
  {
LABEL_93:
    if ((v13 & 0x200000000) == 0)
    {
      goto LABEL_94;
    }

    goto LABEL_196;
  }

LABEL_195:
  self->_callLongNoonWeekday = *(fromCopy + 37);
  *&self->_has |= 0x1000000000uLL;
  v13 = *(fromCopy + 99);
  if ((v13 & 0x200000000) == 0)
  {
LABEL_94:
    if ((v13 & 0x400000000) == 0)
    {
      goto LABEL_95;
    }

    goto LABEL_197;
  }

LABEL_196:
  self->_callLongNoonFri = *(fromCopy + 34);
  *&self->_has |= 0x200000000uLL;
  v13 = *(fromCopy + 99);
  if ((v13 & 0x400000000) == 0)
  {
LABEL_95:
    if ((v13 & 0x800000000) == 0)
    {
      goto LABEL_96;
    }

    goto LABEL_198;
  }

LABEL_197:
  self->_callLongNoonSat = *(fromCopy + 35);
  *&self->_has |= 0x400000000uLL;
  v13 = *(fromCopy + 99);
  if ((v13 & 0x800000000) == 0)
  {
LABEL_96:
    if ((v13 & 0x1000000) == 0)
    {
      goto LABEL_97;
    }

    goto LABEL_199;
  }

LABEL_198:
  self->_callLongNoonSun = *(fromCopy + 36);
  *&self->_has |= 0x800000000uLL;
  v13 = *(fromCopy + 99);
  if ((v13 & 0x1000000) == 0)
  {
LABEL_97:
    if ((v13 & 0x200000) == 0)
    {
      goto LABEL_98;
    }

    goto LABEL_200;
  }

LABEL_199:
  self->_callLongEveWeekday = *(fromCopy + 25);
  *&self->_has |= 0x1000000uLL;
  v13 = *(fromCopy + 99);
  if ((v13 & 0x200000) == 0)
  {
LABEL_98:
    if ((v13 & 0x400000) == 0)
    {
      goto LABEL_99;
    }

    goto LABEL_201;
  }

LABEL_200:
  self->_callLongEveFri = *(fromCopy + 22);
  *&self->_has |= 0x200000uLL;
  v13 = *(fromCopy + 99);
  if ((v13 & 0x400000) == 0)
  {
LABEL_99:
    if ((v13 & 0x800000) == 0)
    {
      goto LABEL_100;
    }

    goto LABEL_202;
  }

LABEL_201:
  self->_callLongEveSat = *(fromCopy + 23);
  *&self->_has |= 0x400000uLL;
  v13 = *(fromCopy + 99);
  if ((v13 & 0x800000) == 0)
  {
LABEL_100:
    if ((v13 & 0x100000000) == 0)
    {
      goto LABEL_101;
    }

    goto LABEL_203;
  }

LABEL_202:
  self->_callLongEveSun = *(fromCopy + 24);
  *&self->_has |= 0x800000uLL;
  v13 = *(fromCopy + 99);
  if ((v13 & 0x100000000) == 0)
  {
LABEL_101:
    if ((v13 & 0x20000000) == 0)
    {
      goto LABEL_102;
    }

    goto LABEL_204;
  }

LABEL_203:
  self->_callLongNightWeekday = *(fromCopy + 33);
  *&self->_has |= 0x100000000uLL;
  v13 = *(fromCopy + 99);
  if ((v13 & 0x20000000) == 0)
  {
LABEL_102:
    if ((v13 & 0x40000000) == 0)
    {
      goto LABEL_103;
    }

    goto LABEL_205;
  }

LABEL_204:
  self->_callLongNightFri = *(fromCopy + 30);
  *&self->_has |= 0x20000000uLL;
  v13 = *(fromCopy + 99);
  if ((v13 & 0x40000000) == 0)
  {
LABEL_103:
    if ((v13 & 0x80000000) == 0)
    {
      goto LABEL_105;
    }

    goto LABEL_104;
  }

LABEL_205:
  self->_callLongNightSat = *(fromCopy + 31);
  *&self->_has |= 0x40000000uLL;
  if ((*(fromCopy + 99) & 0x80000000) != 0)
  {
LABEL_104:
    self->_callLongNightSun = *(fromCopy + 32);
    *&self->_has |= 0x80000000uLL;
  }

LABEL_105:
  if ((fromCopy[803] & 0x20) != 0)
  {
    self->_contactFamilyRelation = *(fromCopy + 186);
    *(&self->_has + 1) |= 0x20000000uLL;
  }

  if (*(fromCopy + 98))
  {
    v15 = fromCopy;
    [(MailIntelligencePETContactEvent *)self setContactRelation:?];
    fromCopy = v15;
  }

  v14 = v5[1];
  if ((v14 & 0x10000000) != 0)
  {
    self->_contactFamilyName = *(fromCopy + 185);
    *(&self->_has + 1) |= 0x10000000uLL;
    v14 = v5[1];
    if ((v14 & 0x4000000000) == 0)
    {
LABEL_111:
      if ((v14 & 0x4000000) == 0)
      {
        goto LABEL_112;
      }

      goto LABEL_209;
    }
  }

  else if ((v14 & 0x4000000000) == 0)
  {
    goto LABEL_111;
  }

  self->_contactParent = *(fromCopy + 195);
  *(&self->_has + 1) |= 0x4000000000uLL;
  v14 = v5[1];
  if ((v14 & 0x4000000) == 0)
  {
LABEL_112:
    if ((v14 & 0x8000000) == 0)
    {
      goto LABEL_113;
    }

    goto LABEL_210;
  }

LABEL_209:
  self->_contactEmergency = *(fromCopy + 183);
  *(&self->_has + 1) |= 0x4000000uLL;
  v14 = v5[1];
  if ((v14 & 0x8000000) == 0)
  {
LABEL_113:
    if ((v14 & 0x1000000000) == 0)
    {
      goto LABEL_114;
    }

    goto LABEL_211;
  }

LABEL_210:
  self->_contactEmergencyFamily = *(fromCopy + 184);
  *(&self->_has + 1) |= 0x8000000uLL;
  v14 = v5[1];
  if ((v14 & 0x1000000000) == 0)
  {
LABEL_114:
    if ((v14 & 0x2000000000) == 0)
    {
      goto LABEL_115;
    }

    goto LABEL_212;
  }

LABEL_211:
  self->_contactInHome = *(fromCopy + 193);
  *(&self->_has + 1) |= 0x1000000000uLL;
  v14 = v5[1];
  if ((v14 & 0x2000000000) == 0)
  {
LABEL_115:
    if ((v14 & 0x80000000) == 0)
    {
      goto LABEL_116;
    }

    goto LABEL_213;
  }

LABEL_212:
  self->_contactInPhotos = *(fromCopy + 194);
  *(&self->_has + 1) |= 0x2000000000uLL;
  v14 = v5[1];
  if ((v14 & 0x80000000) == 0)
  {
LABEL_116:
    if ((v14 & 0x100000000) == 0)
    {
      goto LABEL_117;
    }

    goto LABEL_214;
  }

LABEL_213:
  self->_contactInAirDrop = *(fromCopy + 188);
  *(&self->_has + 1) |= 0x80000000uLL;
  v14 = v5[1];
  if ((v14 & 0x100000000) == 0)
  {
LABEL_117:
    if ((v14 & 0x400000000) == 0)
    {
      goto LABEL_118;
    }

    goto LABEL_215;
  }

LABEL_214:
  self->_contactInAirDropAtHome = *(fromCopy + 189);
  *(&self->_has + 1) |= 0x100000000uLL;
  v14 = v5[1];
  if ((v14 & 0x400000000) == 0)
  {
LABEL_118:
    if ((v14 & 0x800000000) == 0)
    {
      goto LABEL_119;
    }

    goto LABEL_216;
  }

LABEL_215:
  self->_contactInFMFFollowingMe = *(fromCopy + 191);
  *(&self->_has + 1) |= 0x400000000uLL;
  v14 = v5[1];
  if ((v14 & 0x800000000) == 0)
  {
LABEL_119:
    if ((v14 & 0x200000000) == 0)
    {
      goto LABEL_121;
    }

    goto LABEL_120;
  }

LABEL_216:
  self->_contactInFMFSharingWithMe = *(fromCopy + 192);
  *(&self->_has + 1) |= 0x800000000uLL;
  if ((v5[1] & 0x200000000) != 0)
  {
LABEL_120:
    self->_contactInFMFFavorite = *(fromCopy + 190);
    *(&self->_has + 1) |= 0x200000000uLL;
  }

LABEL_121:
  self->_mailIntelligenceContactId = *(fromCopy + 73);
}

@end
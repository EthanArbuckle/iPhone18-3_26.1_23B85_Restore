@interface CloudFamilyAnalysisPETContactEvent
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasCallBirthday:(BOOL)birthday;
- (void)setHasCallDayRatio:(BOOL)ratio;
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
- (void)setHasCallSixWeeks:(BOOL)weeks;
- (void)setHasCallTotal:(BOOL)total;
- (void)setHasCallTotalDur:(BOOL)dur;
- (void)setHasCallTwelveWeeks:(BOOL)weeks;
- (void)setHasCallTwoWeeks:(BOOL)weeks;
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
- (void)setHasFirstPartyMsgDayRatio:(BOOL)ratio;
- (void)setHasFirstPartyMsgEveFri:(BOOL)fri;
- (void)setHasFirstPartyMsgEveSat:(BOOL)sat;
- (void)setHasFirstPartyMsgEveSun:(BOOL)sun;
- (void)setHasFirstPartyMsgEveWeekday:(BOOL)weekday;
- (void)setHasFirstPartyMsgMorningFri:(BOOL)fri;
- (void)setHasFirstPartyMsgMorningSun:(BOOL)sun;
- (void)setHasFirstPartyMsgMorningWeekday:(BOOL)weekday;
- (void)setHasFirstPartyMsgNightFri:(BOOL)fri;
- (void)setHasFirstPartyMsgNightSat:(BOOL)sat;
- (void)setHasFirstPartyMsgNightSun:(BOOL)sun;
- (void)setHasFirstPartyMsgNightWeekday:(BOOL)weekday;
- (void)setHasFirstPartyMsgNoonFri:(BOOL)fri;
- (void)setHasFirstPartyMsgNoonSat:(BOOL)sat;
- (void)setHasFirstPartyMsgNoonSun:(BOOL)sun;
- (void)setHasFirstPartyMsgNoonWeekday:(BOOL)weekday;
- (void)setHasFirstPartyMsgOutgoingRatio:(BOOL)ratio;
- (void)setHasFirstPartyMsgSixWeeks:(BOOL)weeks;
- (void)setHasFirstPartyMsgTotal:(BOOL)total;
- (void)setHasFirstPartyMsgTwoWeeks:(BOOL)weeks;
- (void)setHasThirdPartyMsgDayRatio:(BOOL)ratio;
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
- (void)setHasThirdPartyMsgTwoWeeks:(BOOL)weeks;
- (void)writeTo:(id)to;
@end

@implementation CloudFamilyAnalysisPETContactEvent

- (void)setHasFirstPartyMsgTotal:(BOOL)total
{
  v3 = 0x2000;
  if (!total)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFFFFFFFDFFFLL | v3;
}

- (void)setHasFirstPartyMsgDayRatio:(BOOL)ratio
{
  v3 = 0x400000000000000;
  if (!ratio)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFFFFFFFFFFFFFFLL | v3;
}

- (void)setHasFirstPartyMsgOutgoingRatio:(BOOL)ratio
{
  v3 = 2048;
  if (!ratio)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFFFFFFFF7FFLL | v3;
}

- (void)setHasFirstPartyMsgMorningWeekday:(BOOL)weekday
{
  v3 = 4;
  if (!weekday)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFFFFFFFFFFBLL | v3;
}

- (void)setHasFirstPartyMsgMorningFri:(BOOL)fri
{
  v3 = 0x8000000000000000;
  if (!fri)
  {
    v3 = 0;
  }

  *&self->_has = v3 & 0x8000000000000000 | *&self->_has & 0x7FFFFFFFFFFFFFFFLL;
}

- (void)setHasFirstPartyMsgMorningSun:(BOOL)sun
{
  v3 = 2;
  if (!sun)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFFFFFFFFFFDLL | v3;
}

- (void)setHasFirstPartyMsgNoonWeekday:(BOOL)weekday
{
  v3 = 1024;
  if (!weekday)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFFFFFFFFBFFLL | v3;
}

- (void)setHasFirstPartyMsgNoonFri:(BOOL)fri
{
  v3 = 128;
  if (!fri)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFFFFFFFFF7FLL | v3;
}

- (void)setHasFirstPartyMsgNoonSat:(BOOL)sat
{
  v3 = 256;
  if (!sat)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFFFFFFFFEFFLL | v3;
}

- (void)setHasFirstPartyMsgNoonSun:(BOOL)sun
{
  v3 = 512;
  if (!sun)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFFFFFFFFDFFLL | v3;
}

- (void)setHasFirstPartyMsgEveWeekday:(BOOL)weekday
{
  v3 = 0x4000000000000000;
  if (!weekday)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBFFFFFFFFFFFFFFFLL | v3;
}

- (void)setHasFirstPartyMsgEveFri:(BOOL)fri
{
  v3 = 0x800000000000000;
  if (!fri)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7FFFFFFFFFFFFFFLL | v3;
}

- (void)setHasFirstPartyMsgEveSat:(BOOL)sat
{
  v3 = 0x1000000000000000;
  if (!sat)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEFFFFFFFFFFFFFFFLL | v3;
}

- (void)setHasFirstPartyMsgEveSun:(BOOL)sun
{
  v3 = 0x2000000000000000;
  if (!sun)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDFFFFFFFFFFFFFFFLL | v3;
}

- (void)setHasFirstPartyMsgNightWeekday:(BOOL)weekday
{
  v3 = 64;
  if (!weekday)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFFFFFFFFFBFLL | v3;
}

- (void)setHasFirstPartyMsgNightFri:(BOOL)fri
{
  v3 = 8;
  if (!fri)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFFFFFFFFFF7 | v3;
}

- (void)setHasFirstPartyMsgNightSat:(BOOL)sat
{
  v3 = 16;
  if (!sat)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFFFFFFFFFEFLL | v3;
}

- (void)setHasFirstPartyMsgNightSun:(BOOL)sun
{
  v3 = 32;
  if (!sun)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFFFFFFFFFDFLL | v3;
}

- (void)setHasFirstPartyMsgTwoWeeks:(BOOL)weeks
{
  v3 = 0x4000;
  if (!weeks)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFFFFFFFBFFFLL | v3;
}

- (void)setHasFirstPartyMsgSixWeeks:(BOOL)weeks
{
  v3 = 4096;
  if (!weeks)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFFFFFFFEFFFLL | v3;
}

- (void)setHasThirdPartyMsgTotal:(BOOL)total
{
  v3 = 0x100000000;
  if (!total)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFFEFFFFFFFFLL | v3;
}

- (void)setHasThirdPartyMsgDayRatio:(BOOL)ratio
{
  v3 = 0x8000;
  if (!ratio)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFFFFFFF7FFFLL | v3;
}

- (void)setHasThirdPartyMsgMorningWeekday:(BOOL)weekday
{
  v3 = 0x800000;
  if (!weekday)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFFFFF7FFFFFLL | v3;
}

- (void)setHasThirdPartyMsgMorningFri:(BOOL)fri
{
  v3 = 0x100000;
  if (!fri)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFFFFFEFFFFFLL | v3;
}

- (void)setHasThirdPartyMsgMorningSat:(BOOL)sat
{
  v3 = 0x200000;
  if (!sat)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFFFFFDFFFFFLL | v3;
}

- (void)setHasThirdPartyMsgMorningSun:(BOOL)sun
{
  v3 = 0x400000;
  if (!sun)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFFFFFBFFFFFLL | v3;
}

- (void)setHasThirdPartyMsgNoonWeekday:(BOOL)weekday
{
  v3 = 0x80000000;
  if (!weekday)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFFF7FFFFFFFLL | v3;
}

- (void)setHasThirdPartyMsgNoonFri:(BOOL)fri
{
  v3 = 0x10000000;
  if (!fri)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFFFEFFFFFFFLL | v3;
}

- (void)setHasThirdPartyMsgNoonSat:(BOOL)sat
{
  v3 = 0x20000000;
  if (!sat)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFFFDFFFFFFFLL | v3;
}

- (void)setHasThirdPartyMsgNoonSun:(BOOL)sun
{
  v3 = 0x40000000;
  if (!sun)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFFFBFFFFFFFLL | v3;
}

- (void)setHasThirdPartyMsgEveWeekday:(BOOL)weekday
{
  v3 = 0x80000;
  if (!weekday)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFFFFFF7FFFFLL | v3;
}

- (void)setHasThirdPartyMsgEveFri:(BOOL)fri
{
  v3 = 0x10000;
  if (!fri)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFFFFFFEFFFFLL | v3;
}

- (void)setHasThirdPartyMsgEveSat:(BOOL)sat
{
  v3 = 0x20000;
  if (!sat)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFFFFFFDFFFFLL | v3;
}

- (void)setHasThirdPartyMsgEveSun:(BOOL)sun
{
  v3 = 0x40000;
  if (!sun)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFFFFFFBFFFFLL | v3;
}

- (void)setHasThirdPartyMsgNightWeekday:(BOOL)weekday
{
  v3 = 0x8000000;
  if (!weekday)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFFFF7FFFFFFLL | v3;
}

- (void)setHasThirdPartyMsgNightFri:(BOOL)fri
{
  v3 = 0x1000000;
  if (!fri)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFFFFEFFFFFFLL | v3;
}

- (void)setHasThirdPartyMsgNightSat:(BOOL)sat
{
  v3 = 0x2000000;
  if (!sat)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFFFFDFFFFFFLL | v3;
}

- (void)setHasThirdPartyMsgNightSun:(BOOL)sun
{
  v3 = 0x4000000;
  if (!sun)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFFFFBFFFFFFLL | v3;
}

- (void)setHasThirdPartyMsgTwoWeeks:(BOOL)weeks
{
  v3 = 0x200000000;
  if (!weeks)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFFDFFFFFFFFLL | v3;
}

- (void)setHasCallTotal:(BOOL)total
{
  v3 = 0x40000000000000;
  if (!total)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBFFFFFFFFFFFFFLL | v3;
}

- (void)setHasCallBirthday:(BOOL)birthday
{
  v3 = 0x400000000;
  if (!birthday)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFFBFFFFFFFFLL | v3;
}

- (void)setHasContactFavorite:(BOOL)favorite
{
  v3 = 0x8000000000;
  if (!favorite)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFF7FFFFFFFFFLL | v3;
}

- (void)setHasCallTotalDur:(BOOL)dur
{
  v3 = 0x80000000000000;
  if (!dur)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7FFFFFFFFFFFFFLL | v3;
}

- (void)setHasCallDayRatio:(BOOL)ratio
{
  v3 = 2;
  if (!ratio)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFFFFDLL | v3;
}

- (void)setHasCallLongRatio:(BOOL)ratio
{
  v3 = 0x4000000000;
  if (!ratio)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFBFFFFFFFFFLL | v3;
}

- (void)setHasCallOutgoingRatio:(BOOL)ratio
{
  v3 = 0x10000000000000;
  if (!ratio)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEFFFFFFFFFFFFFLL | v3;
}

- (void)setHasCallMaxDur:(BOOL)dur
{
  v3 = 0x8000000000;
  if (!dur)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFF7FFFFFFFFFLL | v3;
}

- (void)setHasCallMorningWeekday:(BOOL)weekday
{
  v3 = 0x80000000000;
  if (!weekday)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFF7FFFFFFFFFFLL | v3;
}

- (void)setHasCallMorningFri:(BOOL)fri
{
  v3 = 0x10000000000;
  if (!fri)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFEFFFFFFFFFFLL | v3;
}

- (void)setHasCallMorningSat:(BOOL)sat
{
  v3 = 0x20000000000;
  if (!sat)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFDFFFFFFFFFFLL | v3;
}

- (void)setHasCallMorningSun:(BOOL)sun
{
  v3 = 0x40000000000;
  if (!sun)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFBFFFFFFFFFFLL | v3;
}

- (void)setHasCallNoonWeekday:(BOOL)weekday
{
  v3 = 0x8000000000000;
  if (!weekday)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7FFFFFFFFFFFFLL | v3;
}

- (void)setHasCallNoonFri:(BOOL)fri
{
  v3 = 0x1000000000000;
  if (!fri)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFEFFFFFFFFFFFFLL | v3;
}

- (void)setHasCallNoonSat:(BOOL)sat
{
  v3 = 0x2000000000000;
  if (!sat)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFDFFFFFFFFFFFFLL | v3;
}

- (void)setHasCallNoonSun:(BOOL)sun
{
  v3 = 0x4000000000000;
  if (!sun)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFBFFFFFFFFFFFFLL | v3;
}

- (void)setHasCallEveWeekday:(BOOL)weekday
{
  v3 = 0x200000;
  if (!weekday)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFDFFFFFLL | v3;
}

- (void)setHasCallEveFri:(BOOL)fri
{
  v3 = 0x40000;
  if (!fri)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFBFFFFLL | v3;
}

- (void)setHasCallEveSat:(BOOL)sat
{
  v3 = 0x80000;
  if (!sat)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFF7FFFFLL | v3;
}

- (void)setHasCallEveSun:(BOOL)sun
{
  v3 = 0x100000;
  if (!sun)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFEFFFFFLL | v3;
}

- (void)setHasCallNightWeekday:(BOOL)weekday
{
  v3 = 0x800000000000;
  if (!weekday)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFF7FFFFFFFFFFFLL | v3;
}

- (void)setHasCallNightFri:(BOOL)fri
{
  v3 = 0x100000000000;
  if (!fri)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFEFFFFFFFFFFFLL | v3;
}

- (void)setHasCallNightSat:(BOOL)sat
{
  v3 = 0x200000000000;
  if (!sat)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFDFFFFFFFFFFFLL | v3;
}

- (void)setHasCallNightSun:(BOOL)sun
{
  v3 = 0x400000000000;
  if (!sun)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFBFFFFFFFFFFFLL | v3;
}

- (void)setHasCallDurMorningWeekday:(BOOL)weekday
{
  v3 = 512;
  if (!weekday)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFFDFFLL | v3;
}

- (void)setHasCallDurMorningFri:(BOOL)fri
{
  v3 = 64;
  if (!fri)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFFFBFLL | v3;
}

- (void)setHasCallDurMorningSat:(BOOL)sat
{
  v3 = 128;
  if (!sat)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFFF7FLL | v3;
}

- (void)setHasCallDurMorningSun:(BOOL)sun
{
  v3 = 256;
  if (!sun)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFFEFFLL | v3;
}

- (void)setHasCallDurNoonWeekday:(BOOL)weekday
{
  v3 = 0x20000;
  if (!weekday)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFDFFFFLL | v3;
}

- (void)setHasCallDurNoonFri:(BOOL)fri
{
  v3 = 0x4000;
  if (!fri)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFBFFFLL | v3;
}

- (void)setHasCallDurNoonSat:(BOOL)sat
{
  v3 = 0x8000;
  if (!sat)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFF7FFFLL | v3;
}

- (void)setHasCallDurNoonSun:(BOOL)sun
{
  v3 = 0x10000;
  if (!sun)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFEFFFFLL | v3;
}

- (void)setHasCallDurEveWeekday:(BOOL)weekday
{
  v3 = 32;
  if (!weekday)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFFFDFLL | v3;
}

- (void)setHasCallDurEveFri:(BOOL)fri
{
  v3 = 4;
  if (!fri)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFFFFBLL | v3;
}

- (void)setHasCallDurEveSat:(BOOL)sat
{
  v3 = 8;
  if (!sat)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFFFF7 | v3;
}

- (void)setHasCallDurEveSun:(BOOL)sun
{
  v3 = 16;
  if (!sun)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFFFEFLL | v3;
}

- (void)setHasCallDurNightWeekday:(BOOL)weekday
{
  v3 = 0x2000;
  if (!weekday)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFDFFFLL | v3;
}

- (void)setHasCallDurNightFri:(BOOL)fri
{
  v3 = 1024;
  if (!fri)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFFBFFLL | v3;
}

- (void)setHasCallDurNightSat:(BOOL)sat
{
  v3 = 2048;
  if (!sat)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFF7FFLL | v3;
}

- (void)setHasCallDurNightSun:(BOOL)sun
{
  v3 = 4096;
  if (!sun)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFEFFFLL | v3;
}

- (void)setHasCallLongMorningWeekday:(BOOL)weekday
{
  v3 = 0x20000000;
  if (!weekday)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFDFFFFFFFLL | v3;
}

- (void)setHasCallLongMorningFri:(BOOL)fri
{
  v3 = 0x4000000;
  if (!fri)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFBFFFFFFLL | v3;
}

- (void)setHasCallLongMorningSat:(BOOL)sat
{
  v3 = 0x8000000;
  if (!sat)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFF7FFFFFFLL | v3;
}

- (void)setHasCallLongMorningSun:(BOOL)sun
{
  v3 = 0x10000000;
  if (!sun)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFEFFFFFFFLL | v3;
}

- (void)setHasCallLongNoonWeekday:(BOOL)weekday
{
  v3 = 0x2000000000;
  if (!weekday)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFDFFFFFFFFFLL | v3;
}

- (void)setHasCallLongNoonFri:(BOOL)fri
{
  v3 = 0x400000000;
  if (!fri)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFBFFFFFFFFLL | v3;
}

- (void)setHasCallLongNoonSat:(BOOL)sat
{
  v3 = 0x800000000;
  if (!sat)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFF7FFFFFFFFLL | v3;
}

- (void)setHasCallLongNoonSun:(BOOL)sun
{
  v3 = 0x1000000000;
  if (!sun)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFEFFFFFFFFFLL | v3;
}

- (void)setHasCallLongEveWeekday:(BOOL)weekday
{
  v3 = 0x2000000;
  if (!weekday)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFDFFFFFFLL | v3;
}

- (void)setHasCallLongEveFri:(BOOL)fri
{
  v3 = 0x400000;
  if (!fri)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFBFFFFFLL | v3;
}

- (void)setHasCallLongEveSat:(BOOL)sat
{
  v3 = 0x800000;
  if (!sat)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFF7FFFFFLL | v3;
}

- (void)setHasCallLongEveSun:(BOOL)sun
{
  v3 = 0x1000000;
  if (!sun)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFEFFFFFFLL | v3;
}

- (void)setHasCallLongNightWeekday:(BOOL)weekday
{
  v3 = 0x200000000;
  if (!weekday)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFDFFFFFFFFLL | v3;
}

- (void)setHasCallLongNightFri:(BOOL)fri
{
  v3 = 0x40000000;
  if (!fri)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFBFFFFFFFLL | v3;
}

- (void)setHasCallLongNightSat:(BOOL)sat
{
  v3 = 0x80000000;
  if (!sat)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFF7FFFFFFFLL | v3;
}

- (void)setHasCallLongNightSun:(BOOL)sun
{
  v3 = 0x100000000;
  if (!sun)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFEFFFFFFFFLL | v3;
}

- (void)setHasCallTwoWeeks:(BOOL)weeks
{
  v3 = 0x200000000000000;
  if (!weeks)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFFFFFFFFFFFFFFLL | v3;
}

- (void)setHasCallSixWeeks:(BOOL)weeks
{
  v3 = 0x20000000000000;
  if (!weeks)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDFFFFFFFFFFFFFLL | v3;
}

- (void)setHasCallTwelveWeeks:(BOOL)weeks
{
  v3 = 0x100000000000000;
  if (!weeks)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFFFFFFFFFFFFFFLL | v3;
}

- (void)setHasContactFamilyRelation:(BOOL)relation
{
  v3 = 0x4000000000;
  if (!relation)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFBFFFFFFFFFLL | v3;
}

- (void)setHasContactFamilyName:(BOOL)name
{
  v3 = 0x2000000000;
  if (!name)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFDFFFFFFFFFLL | v3;
}

- (void)setHasContactParent:(BOOL)parent
{
  v3 = 0x800000000000;
  if (!parent)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFF7FFFFFFFFFFFLL | v3;
}

- (void)setHasContactEmergency:(BOOL)emergency
{
  v3 = 0x800000000;
  if (!emergency)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFF7FFFFFFFFLL | v3;
}

- (void)setHasContactEmergencyFamily:(BOOL)family
{
  v3 = 0x1000000000;
  if (!family)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFEFFFFFFFFFLL | v3;
}

- (void)setHasContactInHome:(BOOL)home
{
  v3 = 0x200000000000;
  if (!home)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFDFFFFFFFFFFFLL | v3;
}

- (void)setHasContactInPhotos:(BOOL)photos
{
  v3 = 0x400000000000;
  if (!photos)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFBFFFFFFFFFFFLL | v3;
}

- (void)setHasContactInAirDrop:(BOOL)drop
{
  v3 = 0x10000000000;
  if (!drop)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFEFFFFFFFFFFLL | v3;
}

- (void)setHasContactInAirDropAtHome:(BOOL)home
{
  v3 = 0x20000000000;
  if (!home)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFDFFFFFFFFFFLL | v3;
}

- (void)setHasContactInFMFFollowingMe:(BOOL)me
{
  v3 = 0x80000000000;
  if (!me)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFF7FFFFFFFFFFLL | v3;
}

- (void)setHasContactInFMFSharingWithMe:(BOOL)me
{
  v3 = 0x100000000000;
  if (!me)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFEFFFFFFFFFFFLL | v3;
}

- (void)setHasContactInFMFFavorite:(BOOL)favorite
{
  v3 = 0x40000000000;
  if (!favorite)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFBFFFFFFFFFFLL | v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = CloudFamilyAnalysisPETContactEvent;
  v4 = [(CloudFamilyAnalysisPETContactEvent *)&v8 description];
  dictionaryRepresentation = [(CloudFamilyAnalysisPETContactEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  p_has = &self->_has;
  if ((*(&self->_has + 9) & 0x20) != 0)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_firstPartyMsgTotal];
    [dictionary setObject:v5 forKey:@"firstPartyMsgTotal"];
  }

  if ((*(&self->_has + 7) & 4) != 0)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithDouble:self->_firstPartyMsgDayRatio];
    [dictionary setObject:v6 forKey:@"firstPartyMsgDayRatio"];
  }

  v7 = *(&self->_has + 1);
  if ((v7 & 0x800) != 0)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithDouble:self->_firstPartyMsgOutgoingRatio];
    [dictionary setObject:v8 forKey:@"firstPartyMsgOutgoingRatio"];

    v7 = *(&self->_has + 1);
  }

  if ((v7 & 4) != 0)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithDouble:self->_firstPartyMsgMorningWeekday];
    [dictionary setObject:v9 forKey:@"firstPartyMsgMorningWeekday"];
  }

  if ((*p_has & 0x8000000000000000) != 0)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithDouble:self->_firstPartyMsgMorningFri];
    [dictionary setObject:v10 forKey:@"firstPartyMsgMorningFri"];
  }

  v11 = *(&self->_has + 1);
  if (v11)
  {
    v29 = [MEMORY[0x1E696AD98] numberWithDouble:self->_firstPartyMsgMorningSat];
    [dictionary setObject:v29 forKey:@"firstPartyMsgMorningSat"];

    v11 = *(&self->_has + 1);
    if ((v11 & 2) == 0)
    {
LABEL_13:
      if ((v11 & 0x400) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_132;
    }
  }

  else if ((v11 & 2) == 0)
  {
    goto LABEL_13;
  }

  v30 = [MEMORY[0x1E696AD98] numberWithDouble:self->_firstPartyMsgMorningSun];
  [dictionary setObject:v30 forKey:@"firstPartyMsgMorningSun"];

  v11 = *(&self->_has + 1);
  if ((v11 & 0x400) == 0)
  {
LABEL_14:
    if ((v11 & 0x80) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_133;
  }

LABEL_132:
  v31 = [MEMORY[0x1E696AD98] numberWithDouble:self->_firstPartyMsgNoonWeekday];
  [dictionary setObject:v31 forKey:@"firstPartyMsgNoonWeekday"];

  v11 = *(&self->_has + 1);
  if ((v11 & 0x80) == 0)
  {
LABEL_15:
    if ((v11 & 0x100) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_134;
  }

LABEL_133:
  v32 = [MEMORY[0x1E696AD98] numberWithDouble:self->_firstPartyMsgNoonFri];
  [dictionary setObject:v32 forKey:@"firstPartyMsgNoonFri"];

  v11 = *(&self->_has + 1);
  if ((v11 & 0x100) == 0)
  {
LABEL_16:
    if ((v11 & 0x200) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_134:
  v33 = [MEMORY[0x1E696AD98] numberWithDouble:self->_firstPartyMsgNoonSat];
  [dictionary setObject:v33 forKey:@"firstPartyMsgNoonSat"];

  if ((*(&self->_has + 1) & 0x200) != 0)
  {
LABEL_17:
    v12 = [MEMORY[0x1E696AD98] numberWithDouble:self->_firstPartyMsgNoonSun];
    [dictionary setObject:v12 forKey:@"firstPartyMsgNoonSun"];
  }

LABEL_18:
  v13 = *p_has;
  if ((*p_has & 0x4000000000000000) != 0)
  {
    v34 = [MEMORY[0x1E696AD98] numberWithDouble:self->_firstPartyMsgEveWeekday];
    [dictionary setObject:v34 forKey:@"firstPartyMsgEveWeekday"];

    v13 = *p_has;
    if ((*p_has & 0x800000000000000) == 0)
    {
LABEL_20:
      if ((v13 & 0x1000000000000000) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_138;
    }
  }

  else if ((v13 & 0x800000000000000) == 0)
  {
    goto LABEL_20;
  }

  v35 = [MEMORY[0x1E696AD98] numberWithDouble:self->_firstPartyMsgEveFri];
  [dictionary setObject:v35 forKey:@"firstPartyMsgEveFri"];

  v13 = *p_has;
  if ((*p_has & 0x1000000000000000) == 0)
  {
LABEL_21:
    if ((v13 & 0x2000000000000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_138:
  v36 = [MEMORY[0x1E696AD98] numberWithDouble:self->_firstPartyMsgEveSat];
  [dictionary setObject:v36 forKey:@"firstPartyMsgEveSat"];

  if ((*p_has & 0x2000000000000000) != 0)
  {
LABEL_22:
    v14 = [MEMORY[0x1E696AD98] numberWithDouble:self->_firstPartyMsgEveSun];
    [dictionary setObject:v14 forKey:@"firstPartyMsgEveSun"];
  }

LABEL_23:
  v15 = *(&self->_has + 1);
  if ((v15 & 0x40) != 0)
  {
    v37 = [MEMORY[0x1E696AD98] numberWithDouble:self->_firstPartyMsgNightWeekday];
    [dictionary setObject:v37 forKey:@"firstPartyMsgNightWeekday"];

    v15 = *(&self->_has + 1);
    if ((v15 & 8) == 0)
    {
LABEL_25:
      if ((v15 & 0x10) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_142;
    }
  }

  else if ((v15 & 8) == 0)
  {
    goto LABEL_25;
  }

  v38 = [MEMORY[0x1E696AD98] numberWithDouble:self->_firstPartyMsgNightFri];
  [dictionary setObject:v38 forKey:@"firstPartyMsgNightFri"];

  v15 = *(&self->_has + 1);
  if ((v15 & 0x10) == 0)
  {
LABEL_26:
    if ((v15 & 0x20) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_143;
  }

LABEL_142:
  v39 = [MEMORY[0x1E696AD98] numberWithDouble:self->_firstPartyMsgNightSat];
  [dictionary setObject:v39 forKey:@"firstPartyMsgNightSat"];

  v15 = *(&self->_has + 1);
  if ((v15 & 0x20) == 0)
  {
LABEL_27:
    if ((v15 & 0x4000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_144;
  }

LABEL_143:
  v40 = [MEMORY[0x1E696AD98] numberWithDouble:self->_firstPartyMsgNightSun];
  [dictionary setObject:v40 forKey:@"firstPartyMsgNightSun"];

  v15 = *(&self->_has + 1);
  if ((v15 & 0x4000) == 0)
  {
LABEL_28:
    if ((v15 & 0x1000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_145;
  }

LABEL_144:
  v41 = [MEMORY[0x1E696AD98] numberWithDouble:self->_firstPartyMsgTwoWeeks];
  [dictionary setObject:v41 forKey:@"firstPartyMsgTwoWeeks"];

  v15 = *(&self->_has + 1);
  if ((v15 & 0x1000) == 0)
  {
LABEL_29:
    if ((v15 & 0x100000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_146;
  }

LABEL_145:
  v42 = [MEMORY[0x1E696AD98] numberWithDouble:self->_firstPartyMsgSixWeeks];
  [dictionary setObject:v42 forKey:@"firstPartyMsgSixWeeks"];

  v15 = *(&self->_has + 1);
  if ((v15 & 0x100000000) == 0)
  {
LABEL_30:
    if ((v15 & 0x8000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_147;
  }

LABEL_146:
  v43 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_thirdPartyMsgTotal];
  [dictionary setObject:v43 forKey:@"thirdPartyMsgTotal"];

  v15 = *(&self->_has + 1);
  if ((v15 & 0x8000) == 0)
  {
LABEL_31:
    if ((v15 & 0x800000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_148;
  }

LABEL_147:
  v44 = [MEMORY[0x1E696AD98] numberWithDouble:self->_thirdPartyMsgDayRatio];
  [dictionary setObject:v44 forKey:@"thirdPartyMsgDayRatio"];

  v15 = *(&self->_has + 1);
  if ((v15 & 0x800000) == 0)
  {
LABEL_32:
    if ((v15 & 0x100000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_149;
  }

LABEL_148:
  v45 = [MEMORY[0x1E696AD98] numberWithDouble:self->_thirdPartyMsgMorningWeekday];
  [dictionary setObject:v45 forKey:@"thirdPartyMsgMorningWeekday"];

  v15 = *(&self->_has + 1);
  if ((v15 & 0x100000) == 0)
  {
LABEL_33:
    if ((v15 & 0x200000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_150;
  }

LABEL_149:
  v46 = [MEMORY[0x1E696AD98] numberWithDouble:self->_thirdPartyMsgMorningFri];
  [dictionary setObject:v46 forKey:@"thirdPartyMsgMorningFri"];

  v15 = *(&self->_has + 1);
  if ((v15 & 0x200000) == 0)
  {
LABEL_34:
    if ((v15 & 0x400000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_151;
  }

LABEL_150:
  v47 = [MEMORY[0x1E696AD98] numberWithDouble:self->_thirdPartyMsgMorningSat];
  [dictionary setObject:v47 forKey:@"thirdPartyMsgMorningSat"];

  v15 = *(&self->_has + 1);
  if ((v15 & 0x400000) == 0)
  {
LABEL_35:
    if ((v15 & 0x80000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_152;
  }

LABEL_151:
  v48 = [MEMORY[0x1E696AD98] numberWithDouble:self->_thirdPartyMsgMorningSun];
  [dictionary setObject:v48 forKey:@"thirdPartyMsgMorningSun"];

  v15 = *(&self->_has + 1);
  if ((v15 & 0x80000000) == 0)
  {
LABEL_36:
    if ((v15 & 0x10000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_153;
  }

LABEL_152:
  v49 = [MEMORY[0x1E696AD98] numberWithDouble:self->_thirdPartyMsgNoonWeekday];
  [dictionary setObject:v49 forKey:@"thirdPartyMsgNoonWeekday"];

  v15 = *(&self->_has + 1);
  if ((v15 & 0x10000000) == 0)
  {
LABEL_37:
    if ((v15 & 0x20000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_154;
  }

LABEL_153:
  v50 = [MEMORY[0x1E696AD98] numberWithDouble:self->_thirdPartyMsgNoonFri];
  [dictionary setObject:v50 forKey:@"thirdPartyMsgNoonFri"];

  v15 = *(&self->_has + 1);
  if ((v15 & 0x20000000) == 0)
  {
LABEL_38:
    if ((v15 & 0x40000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_155;
  }

LABEL_154:
  v51 = [MEMORY[0x1E696AD98] numberWithDouble:self->_thirdPartyMsgNoonSat];
  [dictionary setObject:v51 forKey:@"thirdPartyMsgNoonSat"];

  v15 = *(&self->_has + 1);
  if ((v15 & 0x40000000) == 0)
  {
LABEL_39:
    if ((v15 & 0x80000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_156;
  }

LABEL_155:
  v52 = [MEMORY[0x1E696AD98] numberWithDouble:self->_thirdPartyMsgNoonSun];
  [dictionary setObject:v52 forKey:@"thirdPartyMsgNoonSun"];

  v15 = *(&self->_has + 1);
  if ((v15 & 0x80000) == 0)
  {
LABEL_40:
    if ((v15 & 0x10000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_157;
  }

LABEL_156:
  v53 = [MEMORY[0x1E696AD98] numberWithDouble:self->_thirdPartyMsgEveWeekday];
  [dictionary setObject:v53 forKey:@"thirdPartyMsgEveWeekday"];

  v15 = *(&self->_has + 1);
  if ((v15 & 0x10000) == 0)
  {
LABEL_41:
    if ((v15 & 0x20000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_158;
  }

LABEL_157:
  v54 = [MEMORY[0x1E696AD98] numberWithDouble:self->_thirdPartyMsgEveFri];
  [dictionary setObject:v54 forKey:@"thirdPartyMsgEveFri"];

  v15 = *(&self->_has + 1);
  if ((v15 & 0x20000) == 0)
  {
LABEL_42:
    if ((v15 & 0x40000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_159;
  }

LABEL_158:
  v55 = [MEMORY[0x1E696AD98] numberWithDouble:self->_thirdPartyMsgEveSat];
  [dictionary setObject:v55 forKey:@"thirdPartyMsgEveSat"];

  v15 = *(&self->_has + 1);
  if ((v15 & 0x40000) == 0)
  {
LABEL_43:
    if ((v15 & 0x8000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_160;
  }

LABEL_159:
  v56 = [MEMORY[0x1E696AD98] numberWithDouble:self->_thirdPartyMsgEveSun];
  [dictionary setObject:v56 forKey:@"thirdPartyMsgEveSun"];

  v15 = *(&self->_has + 1);
  if ((v15 & 0x8000000) == 0)
  {
LABEL_44:
    if ((v15 & 0x1000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_161;
  }

LABEL_160:
  v57 = [MEMORY[0x1E696AD98] numberWithDouble:self->_thirdPartyMsgNightWeekday];
  [dictionary setObject:v57 forKey:@"thirdPartyMsgNightWeekday"];

  v15 = *(&self->_has + 1);
  if ((v15 & 0x1000000) == 0)
  {
LABEL_45:
    if ((v15 & 0x2000000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_162;
  }

LABEL_161:
  v58 = [MEMORY[0x1E696AD98] numberWithDouble:self->_thirdPartyMsgNightFri];
  [dictionary setObject:v58 forKey:@"thirdPartyMsgNightFri"];

  v15 = *(&self->_has + 1);
  if ((v15 & 0x2000000) == 0)
  {
LABEL_46:
    if ((v15 & 0x4000000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_163;
  }

LABEL_162:
  v59 = [MEMORY[0x1E696AD98] numberWithDouble:self->_thirdPartyMsgNightSat];
  [dictionary setObject:v59 forKey:@"thirdPartyMsgNightSat"];

  v15 = *(&self->_has + 1);
  if ((v15 & 0x4000000) == 0)
  {
LABEL_47:
    if ((v15 & 0x200000000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_48;
  }

LABEL_163:
  v60 = [MEMORY[0x1E696AD98] numberWithDouble:self->_thirdPartyMsgNightSun];
  [dictionary setObject:v60 forKey:@"thirdPartyMsgNightSun"];

  if ((*(&self->_has + 1) & 0x200000000) != 0)
  {
LABEL_48:
    v16 = [MEMORY[0x1E696AD98] numberWithDouble:self->_thirdPartyMsgTwoWeeks];
    [dictionary setObject:v16 forKey:@"thirdPartyMsgTwoWeeks"];
  }

LABEL_49:
  if ((*(&self->_has + 6) & 0x40) != 0)
  {
    v17 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_callTotal];
    [dictionary setObject:v17 forKey:@"callTotal"];
  }

  v18 = *(&self->_has + 1);
  if ((v18 & 0x400000000) != 0)
  {
    v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_callBirthday];
    [dictionary setObject:v19 forKey:@"callBirthday"];

    v18 = *(&self->_has + 1);
  }

  if ((v18 & 0x8000000000) != 0)
  {
    v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_contactFavorite];
    [dictionary setObject:v20 forKey:@"contactFavorite"];
  }

  v21 = *p_has;
  if ((*p_has & 0x80000000000000) != 0)
  {
    v61 = [MEMORY[0x1E696AD98] numberWithDouble:self->_callTotalDur];
    [dictionary setObject:v61 forKey:@"callTotalDur"];

    v21 = *p_has;
    if ((*p_has & 2) == 0)
    {
LABEL_57:
      if ((v21 & 0x4000000000) == 0)
      {
        goto LABEL_58;
      }

      goto LABEL_167;
    }
  }

  else if ((v21 & 2) == 0)
  {
    goto LABEL_57;
  }

  v62 = [MEMORY[0x1E696AD98] numberWithDouble:self->_callDayRatio];
  [dictionary setObject:v62 forKey:@"callDayRatio"];

  v21 = *p_has;
  if ((*p_has & 0x4000000000) == 0)
  {
LABEL_58:
    if ((v21 & 0x10000000000000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_168;
  }

LABEL_167:
  v63 = [MEMORY[0x1E696AD98] numberWithDouble:self->_callLongRatio];
  [dictionary setObject:v63 forKey:@"callLongRatio"];

  v21 = *p_has;
  if ((*p_has & 0x10000000000000) == 0)
  {
LABEL_59:
    if ((v21 & 1) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_169;
  }

LABEL_168:
  v64 = [MEMORY[0x1E696AD98] numberWithDouble:self->_callOutgoingRatio];
  [dictionary setObject:v64 forKey:@"callOutgoingRatio"];

  v21 = *p_has;
  if ((*p_has & 1) == 0)
  {
LABEL_60:
    if ((v21 & 0x8000000000) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_170;
  }

LABEL_169:
  v65 = [MEMORY[0x1E696AD98] numberWithDouble:self->_callAvgDur];
  [dictionary setObject:v65 forKey:@"callAvgDur"];

  v21 = *p_has;
  if ((*p_has & 0x8000000000) == 0)
  {
LABEL_61:
    if ((v21 & 0x80000000000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_171;
  }

LABEL_170:
  v66 = [MEMORY[0x1E696AD98] numberWithDouble:self->_callMaxDur];
  [dictionary setObject:v66 forKey:@"callMaxDur"];

  v21 = *p_has;
  if ((*p_has & 0x80000000000) == 0)
  {
LABEL_62:
    if ((v21 & 0x10000000000) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_172;
  }

LABEL_171:
  v67 = [MEMORY[0x1E696AD98] numberWithDouble:self->_callMorningWeekday];
  [dictionary setObject:v67 forKey:@"callMorningWeekday"];

  v21 = *p_has;
  if ((*p_has & 0x10000000000) == 0)
  {
LABEL_63:
    if ((v21 & 0x20000000000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_173;
  }

LABEL_172:
  v68 = [MEMORY[0x1E696AD98] numberWithDouble:self->_callMorningFri];
  [dictionary setObject:v68 forKey:@"callMorningFri"];

  v21 = *p_has;
  if ((*p_has & 0x20000000000) == 0)
  {
LABEL_64:
    if ((v21 & 0x40000000000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_174;
  }

LABEL_173:
  v69 = [MEMORY[0x1E696AD98] numberWithDouble:self->_callMorningSat];
  [dictionary setObject:v69 forKey:@"callMorningSat"];

  v21 = *p_has;
  if ((*p_has & 0x40000000000) == 0)
  {
LABEL_65:
    if ((v21 & 0x8000000000000) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_175;
  }

LABEL_174:
  v70 = [MEMORY[0x1E696AD98] numberWithDouble:self->_callMorningSun];
  [dictionary setObject:v70 forKey:@"callMorningSun"];

  v21 = *p_has;
  if ((*p_has & 0x8000000000000) == 0)
  {
LABEL_66:
    if ((v21 & 0x1000000000000) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_176;
  }

LABEL_175:
  v71 = [MEMORY[0x1E696AD98] numberWithDouble:self->_callNoonWeekday];
  [dictionary setObject:v71 forKey:@"callNoonWeekday"];

  v21 = *p_has;
  if ((*p_has & 0x1000000000000) == 0)
  {
LABEL_67:
    if ((v21 & 0x2000000000000) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_177;
  }

LABEL_176:
  v72 = [MEMORY[0x1E696AD98] numberWithDouble:self->_callNoonFri];
  [dictionary setObject:v72 forKey:@"callNoonFri"];

  v21 = *p_has;
  if ((*p_has & 0x2000000000000) == 0)
  {
LABEL_68:
    if ((v21 & 0x4000000000000) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_178;
  }

LABEL_177:
  v73 = [MEMORY[0x1E696AD98] numberWithDouble:self->_callNoonSat];
  [dictionary setObject:v73 forKey:@"callNoonSat"];

  v21 = *p_has;
  if ((*p_has & 0x4000000000000) == 0)
  {
LABEL_69:
    if ((v21 & 0x200000) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_179;
  }

LABEL_178:
  v74 = [MEMORY[0x1E696AD98] numberWithDouble:self->_callNoonSun];
  [dictionary setObject:v74 forKey:@"callNoonSun"];

  v21 = *p_has;
  if ((*p_has & 0x200000) == 0)
  {
LABEL_70:
    if ((v21 & 0x40000) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_180;
  }

LABEL_179:
  v75 = [MEMORY[0x1E696AD98] numberWithDouble:self->_callEveWeekday];
  [dictionary setObject:v75 forKey:@"callEveWeekday"];

  v21 = *p_has;
  if ((*p_has & 0x40000) == 0)
  {
LABEL_71:
    if ((v21 & 0x80000) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_181;
  }

LABEL_180:
  v76 = [MEMORY[0x1E696AD98] numberWithDouble:self->_callEveFri];
  [dictionary setObject:v76 forKey:@"callEveFri"];

  v21 = *p_has;
  if ((*p_has & 0x80000) == 0)
  {
LABEL_72:
    if ((v21 & 0x100000) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_182;
  }

LABEL_181:
  v77 = [MEMORY[0x1E696AD98] numberWithDouble:self->_callEveSat];
  [dictionary setObject:v77 forKey:@"callEveSat"];

  v21 = *p_has;
  if ((*p_has & 0x100000) == 0)
  {
LABEL_73:
    if ((v21 & 0x800000000000) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_183;
  }

LABEL_182:
  v78 = [MEMORY[0x1E696AD98] numberWithDouble:self->_callEveSun];
  [dictionary setObject:v78 forKey:@"callEveSun"];

  v21 = *p_has;
  if ((*p_has & 0x800000000000) == 0)
  {
LABEL_74:
    if ((v21 & 0x100000000000) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_184;
  }

LABEL_183:
  v79 = [MEMORY[0x1E696AD98] numberWithDouble:self->_callNightWeekday];
  [dictionary setObject:v79 forKey:@"callNightWeekday"];

  v21 = *p_has;
  if ((*p_has & 0x100000000000) == 0)
  {
LABEL_75:
    if ((v21 & 0x200000000000) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_185;
  }

LABEL_184:
  v80 = [MEMORY[0x1E696AD98] numberWithDouble:self->_callNightFri];
  [dictionary setObject:v80 forKey:@"callNightFri"];

  v21 = *p_has;
  if ((*p_has & 0x200000000000) == 0)
  {
LABEL_76:
    if ((v21 & 0x400000000000) == 0)
    {
      goto LABEL_77;
    }

    goto LABEL_186;
  }

LABEL_185:
  v81 = [MEMORY[0x1E696AD98] numberWithDouble:self->_callNightSat];
  [dictionary setObject:v81 forKey:@"callNightSat"];

  v21 = *p_has;
  if ((*p_has & 0x400000000000) == 0)
  {
LABEL_77:
    if ((v21 & 0x200) == 0)
    {
      goto LABEL_78;
    }

    goto LABEL_187;
  }

LABEL_186:
  v82 = [MEMORY[0x1E696AD98] numberWithDouble:self->_callNightSun];
  [dictionary setObject:v82 forKey:@"callNightSun"];

  v21 = *p_has;
  if ((*p_has & 0x200) == 0)
  {
LABEL_78:
    if ((v21 & 0x40) == 0)
    {
      goto LABEL_79;
    }

    goto LABEL_188;
  }

LABEL_187:
  v83 = [MEMORY[0x1E696AD98] numberWithDouble:self->_callDurMorningWeekday];
  [dictionary setObject:v83 forKey:@"callDurMorningWeekday"];

  v21 = *p_has;
  if ((*p_has & 0x40) == 0)
  {
LABEL_79:
    if ((v21 & 0x80) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_189;
  }

LABEL_188:
  v84 = [MEMORY[0x1E696AD98] numberWithDouble:self->_callDurMorningFri];
  [dictionary setObject:v84 forKey:@"callDurMorningFri"];

  v21 = *p_has;
  if ((*p_has & 0x80) == 0)
  {
LABEL_80:
    if ((v21 & 0x100) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_190;
  }

LABEL_189:
  v85 = [MEMORY[0x1E696AD98] numberWithDouble:self->_callDurMorningSat];
  [dictionary setObject:v85 forKey:@"callDurMorningSat"];

  v21 = *p_has;
  if ((*p_has & 0x100) == 0)
  {
LABEL_81:
    if ((v21 & 0x20000) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_191;
  }

LABEL_190:
  v86 = [MEMORY[0x1E696AD98] numberWithDouble:self->_callDurMorningSun];
  [dictionary setObject:v86 forKey:@"callDurMorningSun"];

  v21 = *p_has;
  if ((*p_has & 0x20000) == 0)
  {
LABEL_82:
    if ((v21 & 0x4000) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_192;
  }

LABEL_191:
  v87 = [MEMORY[0x1E696AD98] numberWithDouble:self->_callDurNoonWeekday];
  [dictionary setObject:v87 forKey:@"callDurNoonWeekday"];

  v21 = *p_has;
  if ((*p_has & 0x4000) == 0)
  {
LABEL_83:
    if ((v21 & 0x8000) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_193;
  }

LABEL_192:
  v88 = [MEMORY[0x1E696AD98] numberWithDouble:self->_callDurNoonFri];
  [dictionary setObject:v88 forKey:@"callDurNoonFri"];

  v21 = *p_has;
  if ((*p_has & 0x8000) == 0)
  {
LABEL_84:
    if ((v21 & 0x10000) == 0)
    {
      goto LABEL_85;
    }

    goto LABEL_194;
  }

LABEL_193:
  v89 = [MEMORY[0x1E696AD98] numberWithDouble:self->_callDurNoonSat];
  [dictionary setObject:v89 forKey:@"callDurNoonSat"];

  v21 = *p_has;
  if ((*p_has & 0x10000) == 0)
  {
LABEL_85:
    if ((v21 & 0x20) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_195;
  }

LABEL_194:
  v90 = [MEMORY[0x1E696AD98] numberWithDouble:self->_callDurNoonSun];
  [dictionary setObject:v90 forKey:@"callDurNoonSun"];

  v21 = *p_has;
  if ((*p_has & 0x20) == 0)
  {
LABEL_86:
    if ((v21 & 4) == 0)
    {
      goto LABEL_87;
    }

    goto LABEL_196;
  }

LABEL_195:
  v91 = [MEMORY[0x1E696AD98] numberWithDouble:self->_callDurEveWeekday];
  [dictionary setObject:v91 forKey:@"callDurEveWeekday"];

  v21 = *p_has;
  if ((*p_has & 4) == 0)
  {
LABEL_87:
    if ((v21 & 8) == 0)
    {
      goto LABEL_88;
    }

    goto LABEL_197;
  }

LABEL_196:
  v92 = [MEMORY[0x1E696AD98] numberWithDouble:self->_callDurEveFri];
  [dictionary setObject:v92 forKey:@"callDurEveFri"];

  v21 = *p_has;
  if ((*p_has & 8) == 0)
  {
LABEL_88:
    if ((v21 & 0x10) == 0)
    {
      goto LABEL_89;
    }

    goto LABEL_198;
  }

LABEL_197:
  v93 = [MEMORY[0x1E696AD98] numberWithDouble:self->_callDurEveSat];
  [dictionary setObject:v93 forKey:@"callDurEveSat"];

  v21 = *p_has;
  if ((*p_has & 0x10) == 0)
  {
LABEL_89:
    if ((v21 & 0x2000) == 0)
    {
      goto LABEL_90;
    }

    goto LABEL_199;
  }

LABEL_198:
  v94 = [MEMORY[0x1E696AD98] numberWithDouble:self->_callDurEveSun];
  [dictionary setObject:v94 forKey:@"callDurEveSun"];

  v21 = *p_has;
  if ((*p_has & 0x2000) == 0)
  {
LABEL_90:
    if ((v21 & 0x400) == 0)
    {
      goto LABEL_91;
    }

    goto LABEL_200;
  }

LABEL_199:
  v95 = [MEMORY[0x1E696AD98] numberWithDouble:self->_callDurNightWeekday];
  [dictionary setObject:v95 forKey:@"callDurNightWeekday"];

  v21 = *p_has;
  if ((*p_has & 0x400) == 0)
  {
LABEL_91:
    if ((v21 & 0x800) == 0)
    {
      goto LABEL_92;
    }

    goto LABEL_201;
  }

LABEL_200:
  v96 = [MEMORY[0x1E696AD98] numberWithDouble:self->_callDurNightFri];
  [dictionary setObject:v96 forKey:@"callDurNightFri"];

  v21 = *p_has;
  if ((*p_has & 0x800) == 0)
  {
LABEL_92:
    if ((v21 & 0x1000) == 0)
    {
      goto LABEL_93;
    }

    goto LABEL_202;
  }

LABEL_201:
  v97 = [MEMORY[0x1E696AD98] numberWithDouble:self->_callDurNightSat];
  [dictionary setObject:v97 forKey:@"callDurNightSat"];

  v21 = *p_has;
  if ((*p_has & 0x1000) == 0)
  {
LABEL_93:
    if ((v21 & 0x20000000) == 0)
    {
      goto LABEL_94;
    }

    goto LABEL_203;
  }

LABEL_202:
  v98 = [MEMORY[0x1E696AD98] numberWithDouble:self->_callDurNightSun];
  [dictionary setObject:v98 forKey:@"callDurNightSun"];

  v21 = *p_has;
  if ((*p_has & 0x20000000) == 0)
  {
LABEL_94:
    if ((v21 & 0x4000000) == 0)
    {
      goto LABEL_95;
    }

    goto LABEL_204;
  }

LABEL_203:
  v99 = [MEMORY[0x1E696AD98] numberWithDouble:self->_callLongMorningWeekday];
  [dictionary setObject:v99 forKey:@"callLongMorningWeekday"];

  v21 = *p_has;
  if ((*p_has & 0x4000000) == 0)
  {
LABEL_95:
    if ((v21 & 0x8000000) == 0)
    {
      goto LABEL_96;
    }

    goto LABEL_205;
  }

LABEL_204:
  v100 = [MEMORY[0x1E696AD98] numberWithDouble:self->_callLongMorningFri];
  [dictionary setObject:v100 forKey:@"callLongMorningFri"];

  v21 = *p_has;
  if ((*p_has & 0x8000000) == 0)
  {
LABEL_96:
    if ((v21 & 0x10000000) == 0)
    {
      goto LABEL_97;
    }

    goto LABEL_206;
  }

LABEL_205:
  v101 = [MEMORY[0x1E696AD98] numberWithDouble:self->_callLongMorningSat];
  [dictionary setObject:v101 forKey:@"callLongMorningSat"];

  v21 = *p_has;
  if ((*p_has & 0x10000000) == 0)
  {
LABEL_97:
    if ((v21 & 0x2000000000) == 0)
    {
      goto LABEL_98;
    }

    goto LABEL_207;
  }

LABEL_206:
  v102 = [MEMORY[0x1E696AD98] numberWithDouble:self->_callLongMorningSun];
  [dictionary setObject:v102 forKey:@"callLongMorningSun"];

  v21 = *p_has;
  if ((*p_has & 0x2000000000) == 0)
  {
LABEL_98:
    if ((v21 & 0x400000000) == 0)
    {
      goto LABEL_99;
    }

    goto LABEL_208;
  }

LABEL_207:
  v103 = [MEMORY[0x1E696AD98] numberWithDouble:self->_callLongNoonWeekday];
  [dictionary setObject:v103 forKey:@"callLongNoonWeekday"];

  v21 = *p_has;
  if ((*p_has & 0x400000000) == 0)
  {
LABEL_99:
    if ((v21 & 0x800000000) == 0)
    {
      goto LABEL_100;
    }

    goto LABEL_209;
  }

LABEL_208:
  v104 = [MEMORY[0x1E696AD98] numberWithDouble:self->_callLongNoonFri];
  [dictionary setObject:v104 forKey:@"callLongNoonFri"];

  v21 = *p_has;
  if ((*p_has & 0x800000000) == 0)
  {
LABEL_100:
    if ((v21 & 0x1000000000) == 0)
    {
      goto LABEL_101;
    }

    goto LABEL_210;
  }

LABEL_209:
  v105 = [MEMORY[0x1E696AD98] numberWithDouble:self->_callLongNoonSat];
  [dictionary setObject:v105 forKey:@"callLongNoonSat"];

  v21 = *p_has;
  if ((*p_has & 0x1000000000) == 0)
  {
LABEL_101:
    if ((v21 & 0x2000000) == 0)
    {
      goto LABEL_102;
    }

    goto LABEL_211;
  }

LABEL_210:
  v106 = [MEMORY[0x1E696AD98] numberWithDouble:self->_callLongNoonSun];
  [dictionary setObject:v106 forKey:@"callLongNoonSun"];

  v21 = *p_has;
  if ((*p_has & 0x2000000) == 0)
  {
LABEL_102:
    if ((v21 & 0x400000) == 0)
    {
      goto LABEL_103;
    }

    goto LABEL_212;
  }

LABEL_211:
  v107 = [MEMORY[0x1E696AD98] numberWithDouble:self->_callLongEveWeekday];
  [dictionary setObject:v107 forKey:@"callLongEveWeekday"];

  v21 = *p_has;
  if ((*p_has & 0x400000) == 0)
  {
LABEL_103:
    if ((v21 & 0x800000) == 0)
    {
      goto LABEL_104;
    }

    goto LABEL_213;
  }

LABEL_212:
  v108 = [MEMORY[0x1E696AD98] numberWithDouble:self->_callLongEveFri];
  [dictionary setObject:v108 forKey:@"callLongEveFri"];

  v21 = *p_has;
  if ((*p_has & 0x800000) == 0)
  {
LABEL_104:
    if ((v21 & 0x1000000) == 0)
    {
      goto LABEL_105;
    }

    goto LABEL_214;
  }

LABEL_213:
  v109 = [MEMORY[0x1E696AD98] numberWithDouble:self->_callLongEveSat];
  [dictionary setObject:v109 forKey:@"callLongEveSat"];

  v21 = *p_has;
  if ((*p_has & 0x1000000) == 0)
  {
LABEL_105:
    if ((v21 & 0x200000000) == 0)
    {
      goto LABEL_106;
    }

    goto LABEL_215;
  }

LABEL_214:
  v110 = [MEMORY[0x1E696AD98] numberWithDouble:self->_callLongEveSun];
  [dictionary setObject:v110 forKey:@"callLongEveSun"];

  v21 = *p_has;
  if ((*p_has & 0x200000000) == 0)
  {
LABEL_106:
    if ((v21 & 0x40000000) == 0)
    {
      goto LABEL_107;
    }

    goto LABEL_216;
  }

LABEL_215:
  v111 = [MEMORY[0x1E696AD98] numberWithDouble:self->_callLongNightWeekday];
  [dictionary setObject:v111 forKey:@"callLongNightWeekday"];

  v21 = *p_has;
  if ((*p_has & 0x40000000) == 0)
  {
LABEL_107:
    if ((v21 & 0x80000000) == 0)
    {
      goto LABEL_108;
    }

    goto LABEL_217;
  }

LABEL_216:
  v112 = [MEMORY[0x1E696AD98] numberWithDouble:self->_callLongNightFri];
  [dictionary setObject:v112 forKey:@"callLongNightFri"];

  v21 = *p_has;
  if ((*p_has & 0x80000000) == 0)
  {
LABEL_108:
    if ((v21 & 0x100000000) == 0)
    {
      goto LABEL_109;
    }

    goto LABEL_218;
  }

LABEL_217:
  v113 = [MEMORY[0x1E696AD98] numberWithDouble:self->_callLongNightSat];
  [dictionary setObject:v113 forKey:@"callLongNightSat"];

  v21 = *p_has;
  if ((*p_has & 0x100000000) == 0)
  {
LABEL_109:
    if ((v21 & 0x200000000000000) == 0)
    {
      goto LABEL_110;
    }

    goto LABEL_219;
  }

LABEL_218:
  v114 = [MEMORY[0x1E696AD98] numberWithDouble:self->_callLongNightSun];
  [dictionary setObject:v114 forKey:@"callLongNightSun"];

  v21 = *p_has;
  if ((*p_has & 0x200000000000000) == 0)
  {
LABEL_110:
    if ((v21 & 0x20000000000000) == 0)
    {
      goto LABEL_111;
    }

    goto LABEL_220;
  }

LABEL_219:
  v115 = [MEMORY[0x1E696AD98] numberWithDouble:self->_callTwoWeeks];
  [dictionary setObject:v115 forKey:@"callTwoWeeks"];

  v21 = *p_has;
  if ((*p_has & 0x20000000000000) == 0)
  {
LABEL_111:
    if ((v21 & 0x100000000000000) == 0)
    {
      goto LABEL_113;
    }

    goto LABEL_112;
  }

LABEL_220:
  v116 = [MEMORY[0x1E696AD98] numberWithDouble:self->_callSixWeeks];
  [dictionary setObject:v116 forKey:@"callSixWeeks"];

  if ((*p_has & 0x100000000000000) != 0)
  {
LABEL_112:
    v22 = [MEMORY[0x1E696AD98] numberWithDouble:self->_callTwelveWeeks];
    [dictionary setObject:v22 forKey:@"callTwelveWeeks"];
  }

LABEL_113:
  if ((*(&self->_has + 12) & 0x40) != 0)
  {
    v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_contactFamilyRelation];
    [dictionary setObject:v23 forKey:@"contactFamilyRelation"];
  }

  contactRelation = self->_contactRelation;
  if (contactRelation)
  {
    [dictionary setObject:contactRelation forKey:@"contactRelation"];
  }

  v25 = *(&self->_has + 1);
  if ((v25 & 0x2000000000) != 0)
  {
    v117 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_contactFamilyName];
    [dictionary setObject:v117 forKey:@"contactFamilyName"];

    v25 = *(&self->_has + 1);
    if ((v25 & 0x800000000000) == 0)
    {
LABEL_119:
      if ((v25 & 0x800000000) == 0)
      {
        goto LABEL_120;
      }

      goto LABEL_224;
    }
  }

  else if ((v25 & 0x800000000000) == 0)
  {
    goto LABEL_119;
  }

  v118 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_contactParent];
  [dictionary setObject:v118 forKey:@"contactParent"];

  v25 = *(&self->_has + 1);
  if ((v25 & 0x800000000) == 0)
  {
LABEL_120:
    if ((v25 & 0x1000000000) == 0)
    {
      goto LABEL_121;
    }

    goto LABEL_225;
  }

LABEL_224:
  v119 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_contactEmergency];
  [dictionary setObject:v119 forKey:@"contactEmergency"];

  v25 = *(&self->_has + 1);
  if ((v25 & 0x1000000000) == 0)
  {
LABEL_121:
    if ((v25 & 0x200000000000) == 0)
    {
      goto LABEL_122;
    }

    goto LABEL_226;
  }

LABEL_225:
  v120 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_contactEmergencyFamily];
  [dictionary setObject:v120 forKey:@"contactEmergencyFamily"];

  v25 = *(&self->_has + 1);
  if ((v25 & 0x200000000000) == 0)
  {
LABEL_122:
    if ((v25 & 0x400000000000) == 0)
    {
      goto LABEL_123;
    }

    goto LABEL_227;
  }

LABEL_226:
  v121 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_contactInHome];
  [dictionary setObject:v121 forKey:@"contactInHome"];

  v25 = *(&self->_has + 1);
  if ((v25 & 0x400000000000) == 0)
  {
LABEL_123:
    if ((v25 & 0x10000000000) == 0)
    {
      goto LABEL_124;
    }

    goto LABEL_228;
  }

LABEL_227:
  v122 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_contactInPhotos];
  [dictionary setObject:v122 forKey:@"contactInPhotos"];

  v25 = *(&self->_has + 1);
  if ((v25 & 0x10000000000) == 0)
  {
LABEL_124:
    if ((v25 & 0x20000000000) == 0)
    {
      goto LABEL_125;
    }

    goto LABEL_229;
  }

LABEL_228:
  v123 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_contactInAirDrop];
  [dictionary setObject:v123 forKey:@"contactInAirDrop"];

  v25 = *(&self->_has + 1);
  if ((v25 & 0x20000000000) == 0)
  {
LABEL_125:
    if ((v25 & 0x80000000000) == 0)
    {
      goto LABEL_126;
    }

    goto LABEL_230;
  }

LABEL_229:
  v124 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_contactInAirDropAtHome];
  [dictionary setObject:v124 forKey:@"contactInAirDropAtHome"];

  v25 = *(&self->_has + 1);
  if ((v25 & 0x80000000000) == 0)
  {
LABEL_126:
    if ((v25 & 0x100000000000) == 0)
    {
      goto LABEL_127;
    }

LABEL_231:
    v126 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_contactInFMFSharingWithMe];
    [dictionary setObject:v126 forKey:@"contactInFMFSharingWithMe"];

    if ((*(&self->_has + 1) & 0x40000000000) == 0)
    {
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_230:
  v125 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_contactInFMFFollowingMe];
  [dictionary setObject:v125 forKey:@"contactInFMFFollowingMe"];

  v25 = *(&self->_has + 1);
  if ((v25 & 0x100000000000) != 0)
  {
    goto LABEL_231;
  }

LABEL_127:
  if ((v25 & 0x40000000000) != 0)
  {
LABEL_128:
    v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_contactInFMFFavorite];
    [dictionary setObject:v26 forKey:@"contactInFMFFavorite"];
  }

LABEL_129:
  v27 = dictionary;

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  p_has = &self->_has;
  if ((*(&self->_has + 9) & 0x20) != 0)
  {
    firstPartyMsgTotal = self->_firstPartyMsgTotal;
    PBDataWriterWriteUint64Field();
  }

  if ((*(&self->_has + 7) & 4) != 0)
  {
    firstPartyMsgDayRatio = self->_firstPartyMsgDayRatio;
    PBDataWriterWriteDoubleField();
  }

  v7 = *(&self->_has + 1);
  if ((v7 & 0x800) != 0)
  {
    firstPartyMsgOutgoingRatio = self->_firstPartyMsgOutgoingRatio;
    PBDataWriterWriteDoubleField();
    v7 = *(&self->_has + 1);
  }

  if ((v7 & 4) != 0)
  {
    firstPartyMsgMorningWeekday = self->_firstPartyMsgMorningWeekday;
    PBDataWriterWriteDoubleField();
  }

  if ((*p_has & 0x8000000000000000) != 0)
  {
    firstPartyMsgMorningFri = self->_firstPartyMsgMorningFri;
    PBDataWriterWriteDoubleField();
  }

  v11 = *(&self->_has + 1);
  if (v11)
  {
    firstPartyMsgMorningSat = self->_firstPartyMsgMorningSat;
    PBDataWriterWriteDoubleField();
    v11 = *(&self->_has + 1);
    if ((v11 & 2) == 0)
    {
LABEL_13:
      if ((v11 & 0x400) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_134;
    }
  }

  else if ((v11 & 2) == 0)
  {
    goto LABEL_13;
  }

  firstPartyMsgMorningSun = self->_firstPartyMsgMorningSun;
  PBDataWriterWriteDoubleField();
  v11 = *(&self->_has + 1);
  if ((v11 & 0x400) == 0)
  {
LABEL_14:
    if ((v11 & 0x80) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_135;
  }

LABEL_134:
  firstPartyMsgNoonWeekday = self->_firstPartyMsgNoonWeekday;
  PBDataWriterWriteDoubleField();
  v11 = *(&self->_has + 1);
  if ((v11 & 0x80) == 0)
  {
LABEL_15:
    if ((v11 & 0x100) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_136;
  }

LABEL_135:
  firstPartyMsgNoonFri = self->_firstPartyMsgNoonFri;
  PBDataWriterWriteDoubleField();
  v11 = *(&self->_has + 1);
  if ((v11 & 0x100) == 0)
  {
LABEL_16:
    if ((v11 & 0x200) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_136:
  firstPartyMsgNoonSat = self->_firstPartyMsgNoonSat;
  PBDataWriterWriteDoubleField();
  if ((*(&self->_has + 1) & 0x200) != 0)
  {
LABEL_17:
    firstPartyMsgNoonSun = self->_firstPartyMsgNoonSun;
    PBDataWriterWriteDoubleField();
  }

LABEL_18:
  v13 = *p_has;
  if ((*p_has & 0x4000000000000000) != 0)
  {
    firstPartyMsgEveWeekday = self->_firstPartyMsgEveWeekday;
    PBDataWriterWriteDoubleField();
    v13 = *p_has;
    if ((*p_has & 0x800000000000000) == 0)
    {
LABEL_20:
      if ((v13 & 0x1000000000000000) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_140;
    }
  }

  else if ((v13 & 0x800000000000000) == 0)
  {
    goto LABEL_20;
  }

  firstPartyMsgEveFri = self->_firstPartyMsgEveFri;
  PBDataWriterWriteDoubleField();
  v13 = *p_has;
  if ((*p_has & 0x1000000000000000) == 0)
  {
LABEL_21:
    if ((v13 & 0x2000000000000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_140:
  firstPartyMsgEveSat = self->_firstPartyMsgEveSat;
  PBDataWriterWriteDoubleField();
  if ((*p_has & 0x2000000000000000) != 0)
  {
LABEL_22:
    firstPartyMsgEveSun = self->_firstPartyMsgEveSun;
    PBDataWriterWriteDoubleField();
  }

LABEL_23:
  v15 = *(&self->_has + 1);
  if ((v15 & 0x40) != 0)
  {
    firstPartyMsgNightWeekday = self->_firstPartyMsgNightWeekday;
    PBDataWriterWriteDoubleField();
    v15 = *(&self->_has + 1);
    if ((v15 & 8) == 0)
    {
LABEL_25:
      if ((v15 & 0x10) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_144;
    }
  }

  else if ((v15 & 8) == 0)
  {
    goto LABEL_25;
  }

  firstPartyMsgNightFri = self->_firstPartyMsgNightFri;
  PBDataWriterWriteDoubleField();
  v15 = *(&self->_has + 1);
  if ((v15 & 0x10) == 0)
  {
LABEL_26:
    if ((v15 & 0x20) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_145;
  }

LABEL_144:
  firstPartyMsgNightSat = self->_firstPartyMsgNightSat;
  PBDataWriterWriteDoubleField();
  v15 = *(&self->_has + 1);
  if ((v15 & 0x20) == 0)
  {
LABEL_27:
    if ((v15 & 0x4000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_146;
  }

LABEL_145:
  firstPartyMsgNightSun = self->_firstPartyMsgNightSun;
  PBDataWriterWriteDoubleField();
  v15 = *(&self->_has + 1);
  if ((v15 & 0x4000) == 0)
  {
LABEL_28:
    if ((v15 & 0x1000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_147;
  }

LABEL_146:
  firstPartyMsgTwoWeeks = self->_firstPartyMsgTwoWeeks;
  PBDataWriterWriteDoubleField();
  v15 = *(&self->_has + 1);
  if ((v15 & 0x1000) == 0)
  {
LABEL_29:
    if ((v15 & 0x100000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_148;
  }

LABEL_147:
  firstPartyMsgSixWeeks = self->_firstPartyMsgSixWeeks;
  PBDataWriterWriteDoubleField();
  v15 = *(&self->_has + 1);
  if ((v15 & 0x100000000) == 0)
  {
LABEL_30:
    if ((v15 & 0x8000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_149;
  }

LABEL_148:
  thirdPartyMsgTotal = self->_thirdPartyMsgTotal;
  PBDataWriterWriteUint64Field();
  v15 = *(&self->_has + 1);
  if ((v15 & 0x8000) == 0)
  {
LABEL_31:
    if ((v15 & 0x800000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_150;
  }

LABEL_149:
  thirdPartyMsgDayRatio = self->_thirdPartyMsgDayRatio;
  PBDataWriterWriteDoubleField();
  v15 = *(&self->_has + 1);
  if ((v15 & 0x800000) == 0)
  {
LABEL_32:
    if ((v15 & 0x100000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_151;
  }

LABEL_150:
  thirdPartyMsgMorningWeekday = self->_thirdPartyMsgMorningWeekday;
  PBDataWriterWriteDoubleField();
  v15 = *(&self->_has + 1);
  if ((v15 & 0x100000) == 0)
  {
LABEL_33:
    if ((v15 & 0x200000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_152;
  }

LABEL_151:
  thirdPartyMsgMorningFri = self->_thirdPartyMsgMorningFri;
  PBDataWriterWriteDoubleField();
  v15 = *(&self->_has + 1);
  if ((v15 & 0x200000) == 0)
  {
LABEL_34:
    if ((v15 & 0x400000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_153;
  }

LABEL_152:
  thirdPartyMsgMorningSat = self->_thirdPartyMsgMorningSat;
  PBDataWriterWriteDoubleField();
  v15 = *(&self->_has + 1);
  if ((v15 & 0x400000) == 0)
  {
LABEL_35:
    if ((v15 & 0x80000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_154;
  }

LABEL_153:
  thirdPartyMsgMorningSun = self->_thirdPartyMsgMorningSun;
  PBDataWriterWriteDoubleField();
  v15 = *(&self->_has + 1);
  if ((v15 & 0x80000000) == 0)
  {
LABEL_36:
    if ((v15 & 0x10000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_155;
  }

LABEL_154:
  thirdPartyMsgNoonWeekday = self->_thirdPartyMsgNoonWeekday;
  PBDataWriterWriteDoubleField();
  v15 = *(&self->_has + 1);
  if ((v15 & 0x10000000) == 0)
  {
LABEL_37:
    if ((v15 & 0x20000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_156;
  }

LABEL_155:
  thirdPartyMsgNoonFri = self->_thirdPartyMsgNoonFri;
  PBDataWriterWriteDoubleField();
  v15 = *(&self->_has + 1);
  if ((v15 & 0x20000000) == 0)
  {
LABEL_38:
    if ((v15 & 0x40000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_157;
  }

LABEL_156:
  thirdPartyMsgNoonSat = self->_thirdPartyMsgNoonSat;
  PBDataWriterWriteDoubleField();
  v15 = *(&self->_has + 1);
  if ((v15 & 0x40000000) == 0)
  {
LABEL_39:
    if ((v15 & 0x80000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_158;
  }

LABEL_157:
  thirdPartyMsgNoonSun = self->_thirdPartyMsgNoonSun;
  PBDataWriterWriteDoubleField();
  v15 = *(&self->_has + 1);
  if ((v15 & 0x80000) == 0)
  {
LABEL_40:
    if ((v15 & 0x10000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_159;
  }

LABEL_158:
  thirdPartyMsgEveWeekday = self->_thirdPartyMsgEveWeekday;
  PBDataWriterWriteDoubleField();
  v15 = *(&self->_has + 1);
  if ((v15 & 0x10000) == 0)
  {
LABEL_41:
    if ((v15 & 0x20000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_160;
  }

LABEL_159:
  thirdPartyMsgEveFri = self->_thirdPartyMsgEveFri;
  PBDataWriterWriteDoubleField();
  v15 = *(&self->_has + 1);
  if ((v15 & 0x20000) == 0)
  {
LABEL_42:
    if ((v15 & 0x40000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_161;
  }

LABEL_160:
  thirdPartyMsgEveSat = self->_thirdPartyMsgEveSat;
  PBDataWriterWriteDoubleField();
  v15 = *(&self->_has + 1);
  if ((v15 & 0x40000) == 0)
  {
LABEL_43:
    if ((v15 & 0x8000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_162;
  }

LABEL_161:
  thirdPartyMsgEveSun = self->_thirdPartyMsgEveSun;
  PBDataWriterWriteDoubleField();
  v15 = *(&self->_has + 1);
  if ((v15 & 0x8000000) == 0)
  {
LABEL_44:
    if ((v15 & 0x1000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_163;
  }

LABEL_162:
  thirdPartyMsgNightWeekday = self->_thirdPartyMsgNightWeekday;
  PBDataWriterWriteDoubleField();
  v15 = *(&self->_has + 1);
  if ((v15 & 0x1000000) == 0)
  {
LABEL_45:
    if ((v15 & 0x2000000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_164;
  }

LABEL_163:
  thirdPartyMsgNightFri = self->_thirdPartyMsgNightFri;
  PBDataWriterWriteDoubleField();
  v15 = *(&self->_has + 1);
  if ((v15 & 0x2000000) == 0)
  {
LABEL_46:
    if ((v15 & 0x4000000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_165;
  }

LABEL_164:
  thirdPartyMsgNightSat = self->_thirdPartyMsgNightSat;
  PBDataWriterWriteDoubleField();
  v15 = *(&self->_has + 1);
  if ((v15 & 0x4000000) == 0)
  {
LABEL_47:
    if ((v15 & 0x200000000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_48;
  }

LABEL_165:
  thirdPartyMsgNightSun = self->_thirdPartyMsgNightSun;
  PBDataWriterWriteDoubleField();
  if ((*(&self->_has + 1) & 0x200000000) != 0)
  {
LABEL_48:
    thirdPartyMsgTwoWeeks = self->_thirdPartyMsgTwoWeeks;
    PBDataWriterWriteDoubleField();
  }

LABEL_49:
  if ((*(&self->_has + 6) & 0x40) != 0)
  {
    callTotal = self->_callTotal;
    PBDataWriterWriteUint64Field();
  }

  v18 = *(&self->_has + 1);
  if ((v18 & 0x400000000) != 0)
  {
    callBirthday = self->_callBirthday;
    PBDataWriterWriteUint32Field();
    v18 = *(&self->_has + 1);
  }

  if ((v18 & 0x8000000000) != 0)
  {
    contactFavorite = self->_contactFavorite;
    PBDataWriterWriteUint32Field();
  }

  v21 = *p_has;
  if ((*p_has & 0x80000000000000) != 0)
  {
    callTotalDur = self->_callTotalDur;
    PBDataWriterWriteDoubleField();
    v21 = *p_has;
    if ((*p_has & 2) == 0)
    {
LABEL_57:
      if ((v21 & 0x4000000000) == 0)
      {
        goto LABEL_58;
      }

      goto LABEL_169;
    }
  }

  else if ((v21 & 2) == 0)
  {
    goto LABEL_57;
  }

  callDayRatio = self->_callDayRatio;
  PBDataWriterWriteDoubleField();
  v21 = *p_has;
  if ((*p_has & 0x4000000000) == 0)
  {
LABEL_58:
    if ((v21 & 0x10000000000000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_170;
  }

LABEL_169:
  callLongRatio = self->_callLongRatio;
  PBDataWriterWriteDoubleField();
  v21 = *p_has;
  if ((*p_has & 0x10000000000000) == 0)
  {
LABEL_59:
    if ((v21 & 1) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_171;
  }

LABEL_170:
  callOutgoingRatio = self->_callOutgoingRatio;
  PBDataWriterWriteDoubleField();
  v21 = *p_has;
  if ((*p_has & 1) == 0)
  {
LABEL_60:
    if ((v21 & 0x8000000000) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_172;
  }

LABEL_171:
  callAvgDur = self->_callAvgDur;
  PBDataWriterWriteDoubleField();
  v21 = *p_has;
  if ((*p_has & 0x8000000000) == 0)
  {
LABEL_61:
    if ((v21 & 0x80000000000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_173;
  }

LABEL_172:
  callMaxDur = self->_callMaxDur;
  PBDataWriterWriteDoubleField();
  v21 = *p_has;
  if ((*p_has & 0x80000000000) == 0)
  {
LABEL_62:
    if ((v21 & 0x10000000000) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_174;
  }

LABEL_173:
  callMorningWeekday = self->_callMorningWeekday;
  PBDataWriterWriteDoubleField();
  v21 = *p_has;
  if ((*p_has & 0x10000000000) == 0)
  {
LABEL_63:
    if ((v21 & 0x20000000000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_175;
  }

LABEL_174:
  callMorningFri = self->_callMorningFri;
  PBDataWriterWriteDoubleField();
  v21 = *p_has;
  if ((*p_has & 0x20000000000) == 0)
  {
LABEL_64:
    if ((v21 & 0x40000000000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_176;
  }

LABEL_175:
  callMorningSat = self->_callMorningSat;
  PBDataWriterWriteDoubleField();
  v21 = *p_has;
  if ((*p_has & 0x40000000000) == 0)
  {
LABEL_65:
    if ((v21 & 0x8000000000000) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_177;
  }

LABEL_176:
  callMorningSun = self->_callMorningSun;
  PBDataWriterWriteDoubleField();
  v21 = *p_has;
  if ((*p_has & 0x8000000000000) == 0)
  {
LABEL_66:
    if ((v21 & 0x1000000000000) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_178;
  }

LABEL_177:
  callNoonWeekday = self->_callNoonWeekday;
  PBDataWriterWriteDoubleField();
  v21 = *p_has;
  if ((*p_has & 0x1000000000000) == 0)
  {
LABEL_67:
    if ((v21 & 0x2000000000000) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_179;
  }

LABEL_178:
  callNoonFri = self->_callNoonFri;
  PBDataWriterWriteDoubleField();
  v21 = *p_has;
  if ((*p_has & 0x2000000000000) == 0)
  {
LABEL_68:
    if ((v21 & 0x4000000000000) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_180;
  }

LABEL_179:
  callNoonSat = self->_callNoonSat;
  PBDataWriterWriteDoubleField();
  v21 = *p_has;
  if ((*p_has & 0x4000000000000) == 0)
  {
LABEL_69:
    if ((v21 & 0x200000) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_181;
  }

LABEL_180:
  callNoonSun = self->_callNoonSun;
  PBDataWriterWriteDoubleField();
  v21 = *p_has;
  if ((*p_has & 0x200000) == 0)
  {
LABEL_70:
    if ((v21 & 0x40000) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_182;
  }

LABEL_181:
  callEveWeekday = self->_callEveWeekday;
  PBDataWriterWriteDoubleField();
  v21 = *p_has;
  if ((*p_has & 0x40000) == 0)
  {
LABEL_71:
    if ((v21 & 0x80000) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_183;
  }

LABEL_182:
  callEveFri = self->_callEveFri;
  PBDataWriterWriteDoubleField();
  v21 = *p_has;
  if ((*p_has & 0x80000) == 0)
  {
LABEL_72:
    if ((v21 & 0x100000) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_184;
  }

LABEL_183:
  callEveSat = self->_callEveSat;
  PBDataWriterWriteDoubleField();
  v21 = *p_has;
  if ((*p_has & 0x100000) == 0)
  {
LABEL_73:
    if ((v21 & 0x800000000000) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_185;
  }

LABEL_184:
  callEveSun = self->_callEveSun;
  PBDataWriterWriteDoubleField();
  v21 = *p_has;
  if ((*p_has & 0x800000000000) == 0)
  {
LABEL_74:
    if ((v21 & 0x100000000000) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_186;
  }

LABEL_185:
  callNightWeekday = self->_callNightWeekday;
  PBDataWriterWriteDoubleField();
  v21 = *p_has;
  if ((*p_has & 0x100000000000) == 0)
  {
LABEL_75:
    if ((v21 & 0x200000000000) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_187;
  }

LABEL_186:
  callNightFri = self->_callNightFri;
  PBDataWriterWriteDoubleField();
  v21 = *p_has;
  if ((*p_has & 0x200000000000) == 0)
  {
LABEL_76:
    if ((v21 & 0x400000000000) == 0)
    {
      goto LABEL_77;
    }

    goto LABEL_188;
  }

LABEL_187:
  callNightSat = self->_callNightSat;
  PBDataWriterWriteDoubleField();
  v21 = *p_has;
  if ((*p_has & 0x400000000000) == 0)
  {
LABEL_77:
    if ((v21 & 0x200) == 0)
    {
      goto LABEL_78;
    }

    goto LABEL_189;
  }

LABEL_188:
  callNightSun = self->_callNightSun;
  PBDataWriterWriteDoubleField();
  v21 = *p_has;
  if ((*p_has & 0x200) == 0)
  {
LABEL_78:
    if ((v21 & 0x40) == 0)
    {
      goto LABEL_79;
    }

    goto LABEL_190;
  }

LABEL_189:
  callDurMorningWeekday = self->_callDurMorningWeekday;
  PBDataWriterWriteDoubleField();
  v21 = *p_has;
  if ((*p_has & 0x40) == 0)
  {
LABEL_79:
    if ((v21 & 0x80) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_191;
  }

LABEL_190:
  callDurMorningFri = self->_callDurMorningFri;
  PBDataWriterWriteDoubleField();
  v21 = *p_has;
  if ((*p_has & 0x80) == 0)
  {
LABEL_80:
    if ((v21 & 0x100) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_192;
  }

LABEL_191:
  callDurMorningSat = self->_callDurMorningSat;
  PBDataWriterWriteDoubleField();
  v21 = *p_has;
  if ((*p_has & 0x100) == 0)
  {
LABEL_81:
    if ((v21 & 0x20000) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_193;
  }

LABEL_192:
  callDurMorningSun = self->_callDurMorningSun;
  PBDataWriterWriteDoubleField();
  v21 = *p_has;
  if ((*p_has & 0x20000) == 0)
  {
LABEL_82:
    if ((v21 & 0x4000) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_194;
  }

LABEL_193:
  callDurNoonWeekday = self->_callDurNoonWeekday;
  PBDataWriterWriteDoubleField();
  v21 = *p_has;
  if ((*p_has & 0x4000) == 0)
  {
LABEL_83:
    if ((v21 & 0x8000) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_195;
  }

LABEL_194:
  callDurNoonFri = self->_callDurNoonFri;
  PBDataWriterWriteDoubleField();
  v21 = *p_has;
  if ((*p_has & 0x8000) == 0)
  {
LABEL_84:
    if ((v21 & 0x10000) == 0)
    {
      goto LABEL_85;
    }

    goto LABEL_196;
  }

LABEL_195:
  callDurNoonSat = self->_callDurNoonSat;
  PBDataWriterWriteDoubleField();
  v21 = *p_has;
  if ((*p_has & 0x10000) == 0)
  {
LABEL_85:
    if ((v21 & 0x20) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_197;
  }

LABEL_196:
  callDurNoonSun = self->_callDurNoonSun;
  PBDataWriterWriteDoubleField();
  v21 = *p_has;
  if ((*p_has & 0x20) == 0)
  {
LABEL_86:
    if ((v21 & 4) == 0)
    {
      goto LABEL_87;
    }

    goto LABEL_198;
  }

LABEL_197:
  callDurEveWeekday = self->_callDurEveWeekday;
  PBDataWriterWriteDoubleField();
  v21 = *p_has;
  if ((*p_has & 4) == 0)
  {
LABEL_87:
    if ((v21 & 8) == 0)
    {
      goto LABEL_88;
    }

    goto LABEL_199;
  }

LABEL_198:
  callDurEveFri = self->_callDurEveFri;
  PBDataWriterWriteDoubleField();
  v21 = *p_has;
  if ((*p_has & 8) == 0)
  {
LABEL_88:
    if ((v21 & 0x10) == 0)
    {
      goto LABEL_89;
    }

    goto LABEL_200;
  }

LABEL_199:
  callDurEveSat = self->_callDurEveSat;
  PBDataWriterWriteDoubleField();
  v21 = *p_has;
  if ((*p_has & 0x10) == 0)
  {
LABEL_89:
    if ((v21 & 0x2000) == 0)
    {
      goto LABEL_90;
    }

    goto LABEL_201;
  }

LABEL_200:
  callDurEveSun = self->_callDurEveSun;
  PBDataWriterWriteDoubleField();
  v21 = *p_has;
  if ((*p_has & 0x2000) == 0)
  {
LABEL_90:
    if ((v21 & 0x400) == 0)
    {
      goto LABEL_91;
    }

    goto LABEL_202;
  }

LABEL_201:
  callDurNightWeekday = self->_callDurNightWeekday;
  PBDataWriterWriteDoubleField();
  v21 = *p_has;
  if ((*p_has & 0x400) == 0)
  {
LABEL_91:
    if ((v21 & 0x800) == 0)
    {
      goto LABEL_92;
    }

    goto LABEL_203;
  }

LABEL_202:
  callDurNightFri = self->_callDurNightFri;
  PBDataWriterWriteDoubleField();
  v21 = *p_has;
  if ((*p_has & 0x800) == 0)
  {
LABEL_92:
    if ((v21 & 0x1000) == 0)
    {
      goto LABEL_93;
    }

    goto LABEL_204;
  }

LABEL_203:
  callDurNightSat = self->_callDurNightSat;
  PBDataWriterWriteDoubleField();
  v21 = *p_has;
  if ((*p_has & 0x1000) == 0)
  {
LABEL_93:
    if ((v21 & 0x20000000) == 0)
    {
      goto LABEL_94;
    }

    goto LABEL_205;
  }

LABEL_204:
  callDurNightSun = self->_callDurNightSun;
  PBDataWriterWriteDoubleField();
  v21 = *p_has;
  if ((*p_has & 0x20000000) == 0)
  {
LABEL_94:
    if ((v21 & 0x4000000) == 0)
    {
      goto LABEL_95;
    }

    goto LABEL_206;
  }

LABEL_205:
  callLongMorningWeekday = self->_callLongMorningWeekday;
  PBDataWriterWriteDoubleField();
  v21 = *p_has;
  if ((*p_has & 0x4000000) == 0)
  {
LABEL_95:
    if ((v21 & 0x8000000) == 0)
    {
      goto LABEL_96;
    }

    goto LABEL_207;
  }

LABEL_206:
  callLongMorningFri = self->_callLongMorningFri;
  PBDataWriterWriteDoubleField();
  v21 = *p_has;
  if ((*p_has & 0x8000000) == 0)
  {
LABEL_96:
    if ((v21 & 0x10000000) == 0)
    {
      goto LABEL_97;
    }

    goto LABEL_208;
  }

LABEL_207:
  callLongMorningSat = self->_callLongMorningSat;
  PBDataWriterWriteDoubleField();
  v21 = *p_has;
  if ((*p_has & 0x10000000) == 0)
  {
LABEL_97:
    if ((v21 & 0x2000000000) == 0)
    {
      goto LABEL_98;
    }

    goto LABEL_209;
  }

LABEL_208:
  callLongMorningSun = self->_callLongMorningSun;
  PBDataWriterWriteDoubleField();
  v21 = *p_has;
  if ((*p_has & 0x2000000000) == 0)
  {
LABEL_98:
    if ((v21 & 0x400000000) == 0)
    {
      goto LABEL_99;
    }

    goto LABEL_210;
  }

LABEL_209:
  callLongNoonWeekday = self->_callLongNoonWeekday;
  PBDataWriterWriteDoubleField();
  v21 = *p_has;
  if ((*p_has & 0x400000000) == 0)
  {
LABEL_99:
    if ((v21 & 0x800000000) == 0)
    {
      goto LABEL_100;
    }

    goto LABEL_211;
  }

LABEL_210:
  callLongNoonFri = self->_callLongNoonFri;
  PBDataWriterWriteDoubleField();
  v21 = *p_has;
  if ((*p_has & 0x800000000) == 0)
  {
LABEL_100:
    if ((v21 & 0x1000000000) == 0)
    {
      goto LABEL_101;
    }

    goto LABEL_212;
  }

LABEL_211:
  callLongNoonSat = self->_callLongNoonSat;
  PBDataWriterWriteDoubleField();
  v21 = *p_has;
  if ((*p_has & 0x1000000000) == 0)
  {
LABEL_101:
    if ((v21 & 0x2000000) == 0)
    {
      goto LABEL_102;
    }

    goto LABEL_213;
  }

LABEL_212:
  callLongNoonSun = self->_callLongNoonSun;
  PBDataWriterWriteDoubleField();
  v21 = *p_has;
  if ((*p_has & 0x2000000) == 0)
  {
LABEL_102:
    if ((v21 & 0x400000) == 0)
    {
      goto LABEL_103;
    }

    goto LABEL_214;
  }

LABEL_213:
  callLongEveWeekday = self->_callLongEveWeekday;
  PBDataWriterWriteDoubleField();
  v21 = *p_has;
  if ((*p_has & 0x400000) == 0)
  {
LABEL_103:
    if ((v21 & 0x800000) == 0)
    {
      goto LABEL_104;
    }

    goto LABEL_215;
  }

LABEL_214:
  callLongEveFri = self->_callLongEveFri;
  PBDataWriterWriteDoubleField();
  v21 = *p_has;
  if ((*p_has & 0x800000) == 0)
  {
LABEL_104:
    if ((v21 & 0x1000000) == 0)
    {
      goto LABEL_105;
    }

    goto LABEL_216;
  }

LABEL_215:
  callLongEveSat = self->_callLongEveSat;
  PBDataWriterWriteDoubleField();
  v21 = *p_has;
  if ((*p_has & 0x1000000) == 0)
  {
LABEL_105:
    if ((v21 & 0x200000000) == 0)
    {
      goto LABEL_106;
    }

    goto LABEL_217;
  }

LABEL_216:
  callLongEveSun = self->_callLongEveSun;
  PBDataWriterWriteDoubleField();
  v21 = *p_has;
  if ((*p_has & 0x200000000) == 0)
  {
LABEL_106:
    if ((v21 & 0x40000000) == 0)
    {
      goto LABEL_107;
    }

    goto LABEL_218;
  }

LABEL_217:
  callLongNightWeekday = self->_callLongNightWeekday;
  PBDataWriterWriteDoubleField();
  v21 = *p_has;
  if ((*p_has & 0x40000000) == 0)
  {
LABEL_107:
    if ((v21 & 0x80000000) == 0)
    {
      goto LABEL_108;
    }

    goto LABEL_219;
  }

LABEL_218:
  callLongNightFri = self->_callLongNightFri;
  PBDataWriterWriteDoubleField();
  v21 = *p_has;
  if ((*p_has & 0x80000000) == 0)
  {
LABEL_108:
    if ((v21 & 0x100000000) == 0)
    {
      goto LABEL_109;
    }

    goto LABEL_220;
  }

LABEL_219:
  callLongNightSat = self->_callLongNightSat;
  PBDataWriterWriteDoubleField();
  v21 = *p_has;
  if ((*p_has & 0x100000000) == 0)
  {
LABEL_109:
    if ((v21 & 0x200000000000000) == 0)
    {
      goto LABEL_110;
    }

    goto LABEL_221;
  }

LABEL_220:
  callLongNightSun = self->_callLongNightSun;
  PBDataWriterWriteDoubleField();
  v21 = *p_has;
  if ((*p_has & 0x200000000000000) == 0)
  {
LABEL_110:
    if ((v21 & 0x20000000000000) == 0)
    {
      goto LABEL_111;
    }

    goto LABEL_222;
  }

LABEL_221:
  callTwoWeeks = self->_callTwoWeeks;
  PBDataWriterWriteDoubleField();
  v21 = *p_has;
  if ((*p_has & 0x20000000000000) == 0)
  {
LABEL_111:
    if ((v21 & 0x100000000000000) == 0)
    {
      goto LABEL_113;
    }

    goto LABEL_112;
  }

LABEL_222:
  callSixWeeks = self->_callSixWeeks;
  PBDataWriterWriteDoubleField();
  if ((*p_has & 0x100000000000000) != 0)
  {
LABEL_112:
    callTwelveWeeks = self->_callTwelveWeeks;
    PBDataWriterWriteDoubleField();
  }

LABEL_113:
  if ((*(&self->_has + 12) & 0x40) != 0)
  {
    contactFamilyRelation = self->_contactFamilyRelation;
    PBDataWriterWriteUint32Field();
  }

  if (self->_contactRelation)
  {
    PBDataWriterWriteStringField();
  }

  v24 = *(&self->_has + 1);
  if ((v24 & 0x2000000000) != 0)
  {
    contactFamilyName = self->_contactFamilyName;
    PBDataWriterWriteUint32Field();
    v24 = *(&self->_has + 1);
    if ((v24 & 0x800000000000) == 0)
    {
LABEL_119:
      if ((v24 & 0x800000000) == 0)
      {
        goto LABEL_120;
      }

      goto LABEL_226;
    }
  }

  else if ((v24 & 0x800000000000) == 0)
  {
    goto LABEL_119;
  }

  contactParent = self->_contactParent;
  PBDataWriterWriteUint32Field();
  v24 = *(&self->_has + 1);
  if ((v24 & 0x800000000) == 0)
  {
LABEL_120:
    if ((v24 & 0x1000000000) == 0)
    {
      goto LABEL_121;
    }

    goto LABEL_227;
  }

LABEL_226:
  contactEmergency = self->_contactEmergency;
  PBDataWriterWriteUint32Field();
  v24 = *(&self->_has + 1);
  if ((v24 & 0x1000000000) == 0)
  {
LABEL_121:
    if ((v24 & 0x200000000000) == 0)
    {
      goto LABEL_122;
    }

    goto LABEL_228;
  }

LABEL_227:
  contactEmergencyFamily = self->_contactEmergencyFamily;
  PBDataWriterWriteUint32Field();
  v24 = *(&self->_has + 1);
  if ((v24 & 0x200000000000) == 0)
  {
LABEL_122:
    if ((v24 & 0x400000000000) == 0)
    {
      goto LABEL_123;
    }

    goto LABEL_229;
  }

LABEL_228:
  contactInHome = self->_contactInHome;
  PBDataWriterWriteUint32Field();
  v24 = *(&self->_has + 1);
  if ((v24 & 0x400000000000) == 0)
  {
LABEL_123:
    if ((v24 & 0x10000000000) == 0)
    {
      goto LABEL_124;
    }

    goto LABEL_230;
  }

LABEL_229:
  contactInPhotos = self->_contactInPhotos;
  PBDataWriterWriteUint32Field();
  v24 = *(&self->_has + 1);
  if ((v24 & 0x10000000000) == 0)
  {
LABEL_124:
    if ((v24 & 0x20000000000) == 0)
    {
      goto LABEL_125;
    }

    goto LABEL_231;
  }

LABEL_230:
  contactInAirDrop = self->_contactInAirDrop;
  PBDataWriterWriteUint32Field();
  v24 = *(&self->_has + 1);
  if ((v24 & 0x20000000000) == 0)
  {
LABEL_125:
    if ((v24 & 0x80000000000) == 0)
    {
      goto LABEL_126;
    }

    goto LABEL_232;
  }

LABEL_231:
  contactInAirDropAtHome = self->_contactInAirDropAtHome;
  PBDataWriterWriteUint32Field();
  v24 = *(&self->_has + 1);
  if ((v24 & 0x80000000000) == 0)
  {
LABEL_126:
    if ((v24 & 0x100000000000) == 0)
    {
      goto LABEL_127;
    }

    goto LABEL_233;
  }

LABEL_232:
  contactInFMFFollowingMe = self->_contactInFMFFollowingMe;
  PBDataWriterWriteUint32Field();
  v24 = *(&self->_has + 1);
  if ((v24 & 0x100000000000) == 0)
  {
LABEL_127:
    if ((v24 & 0x40000000000) == 0)
    {
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_233:
  contactInFMFSharingWithMe = self->_contactInFMFSharingWithMe;
  PBDataWriterWriteUint32Field();
  if ((*(&self->_has + 1) & 0x40000000000) != 0)
  {
LABEL_128:
    contactInFMFFavorite = self->_contactInFMFFavorite;
    PBDataWriterWriteUint32Field();
  }

LABEL_129:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  p_has = &self->_has;
  if ((*(&self->_has + 9) & 0x20) != 0)
  {
    toCopy[78] = self->_firstPartyMsgTotal;
    toCopy[108] |= 0x2000uLL;
  }

  if ((*(&self->_has + 7) & 4) != 0)
  {
    toCopy[59] = *&self->_firstPartyMsgDayRatio;
    toCopy[107] |= 0x400000000000000uLL;
  }

  v6 = *(&self->_has + 1);
  if ((v6 & 0x800) != 0)
  {
    toCopy[76] = *&self->_firstPartyMsgOutgoingRatio;
    toCopy[108] |= 0x800uLL;
    v6 = *(&self->_has + 1);
  }

  if ((v6 & 4) != 0)
  {
    toCopy[67] = *&self->_firstPartyMsgMorningWeekday;
    toCopy[108] |= 4uLL;
  }

  if ((*p_has & 0x8000000000000000) != 0)
  {
    toCopy[64] = *&self->_firstPartyMsgMorningFri;
    toCopy[107] |= 0x8000000000000000;
  }

  v7 = *(&self->_has + 1);
  if (v7)
  {
    toCopy[65] = *&self->_firstPartyMsgMorningSat;
    toCopy[108] |= 1uLL;
    v7 = *(&self->_has + 1);
    if ((v7 & 2) == 0)
    {
LABEL_13:
      if ((v7 & 0x400) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_134;
    }
  }

  else if ((v7 & 2) == 0)
  {
    goto LABEL_13;
  }

  toCopy[66] = *&self->_firstPartyMsgMorningSun;
  toCopy[108] |= 2uLL;
  v7 = *(&self->_has + 1);
  if ((v7 & 0x400) == 0)
  {
LABEL_14:
    if ((v7 & 0x80) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_135;
  }

LABEL_134:
  toCopy[75] = *&self->_firstPartyMsgNoonWeekday;
  toCopy[108] |= 0x400uLL;
  v7 = *(&self->_has + 1);
  if ((v7 & 0x80) == 0)
  {
LABEL_15:
    if ((v7 & 0x100) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_136;
  }

LABEL_135:
  toCopy[72] = *&self->_firstPartyMsgNoonFri;
  toCopy[108] |= 0x80uLL;
  v7 = *(&self->_has + 1);
  if ((v7 & 0x100) == 0)
  {
LABEL_16:
    if ((v7 & 0x200) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_136:
  toCopy[73] = *&self->_firstPartyMsgNoonSat;
  toCopy[108] |= 0x100uLL;
  if ((*(&self->_has + 1) & 0x200) != 0)
  {
LABEL_17:
    toCopy[74] = *&self->_firstPartyMsgNoonSun;
    toCopy[108] |= 0x200uLL;
  }

LABEL_18:
  has = *p_has;
  if ((*p_has & 0x4000000000000000) != 0)
  {
    toCopy[63] = *&self->_firstPartyMsgEveWeekday;
    toCopy[107] |= 0x4000000000000000uLL;
    has = self->_has;
    if ((has & 0x800000000000000) == 0)
    {
LABEL_20:
      if ((has & 0x1000000000000000) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_140;
    }
  }

  else if ((has & 0x800000000000000) == 0)
  {
    goto LABEL_20;
  }

  toCopy[60] = *&self->_firstPartyMsgEveFri;
  toCopy[107] |= 0x800000000000000uLL;
  has = self->_has;
  if ((has & 0x1000000000000000) == 0)
  {
LABEL_21:
    if ((has & 0x2000000000000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_140:
  toCopy[61] = *&self->_firstPartyMsgEveSat;
  toCopy[107] |= 0x1000000000000000uLL;
  if ((*&self->_has & 0x2000000000000000) != 0)
  {
LABEL_22:
    toCopy[62] = *&self->_firstPartyMsgEveSun;
    toCopy[107] |= 0x2000000000000000uLL;
  }

LABEL_23:
  v9 = *(&self->_has + 1);
  if ((v9 & 0x40) != 0)
  {
    toCopy[71] = *&self->_firstPartyMsgNightWeekday;
    toCopy[108] |= 0x40uLL;
    v9 = *(&self->_has + 1);
    if ((v9 & 8) == 0)
    {
LABEL_25:
      if ((v9 & 0x10) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_144;
    }
  }

  else if ((v9 & 8) == 0)
  {
    goto LABEL_25;
  }

  toCopy[68] = *&self->_firstPartyMsgNightFri;
  toCopy[108] |= 8uLL;
  v9 = *(&self->_has + 1);
  if ((v9 & 0x10) == 0)
  {
LABEL_26:
    if ((v9 & 0x20) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_145;
  }

LABEL_144:
  toCopy[69] = *&self->_firstPartyMsgNightSat;
  toCopy[108] |= 0x10uLL;
  v9 = *(&self->_has + 1);
  if ((v9 & 0x20) == 0)
  {
LABEL_27:
    if ((v9 & 0x4000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_146;
  }

LABEL_145:
  toCopy[70] = *&self->_firstPartyMsgNightSun;
  toCopy[108] |= 0x20uLL;
  v9 = *(&self->_has + 1);
  if ((v9 & 0x4000) == 0)
  {
LABEL_28:
    if ((v9 & 0x1000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_147;
  }

LABEL_146:
  toCopy[79] = *&self->_firstPartyMsgTwoWeeks;
  toCopy[108] |= 0x4000uLL;
  v9 = *(&self->_has + 1);
  if ((v9 & 0x1000) == 0)
  {
LABEL_29:
    if ((v9 & 0x100000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_148;
  }

LABEL_147:
  toCopy[77] = *&self->_firstPartyMsgSixWeeks;
  toCopy[108] |= 0x1000uLL;
  v9 = *(&self->_has + 1);
  if ((v9 & 0x100000000) == 0)
  {
LABEL_30:
    if ((v9 & 0x8000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_149;
  }

LABEL_148:
  toCopy[97] = self->_thirdPartyMsgTotal;
  toCopy[108] |= 0x100000000uLL;
  v9 = *(&self->_has + 1);
  if ((v9 & 0x8000) == 0)
  {
LABEL_31:
    if ((v9 & 0x800000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_150;
  }

LABEL_149:
  toCopy[80] = *&self->_thirdPartyMsgDayRatio;
  toCopy[108] |= 0x8000uLL;
  v9 = *(&self->_has + 1);
  if ((v9 & 0x800000) == 0)
  {
LABEL_32:
    if ((v9 & 0x100000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_151;
  }

LABEL_150:
  toCopy[88] = *&self->_thirdPartyMsgMorningWeekday;
  toCopy[108] |= 0x800000uLL;
  v9 = *(&self->_has + 1);
  if ((v9 & 0x100000) == 0)
  {
LABEL_33:
    if ((v9 & 0x200000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_152;
  }

LABEL_151:
  toCopy[85] = *&self->_thirdPartyMsgMorningFri;
  toCopy[108] |= 0x100000uLL;
  v9 = *(&self->_has + 1);
  if ((v9 & 0x200000) == 0)
  {
LABEL_34:
    if ((v9 & 0x400000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_153;
  }

LABEL_152:
  toCopy[86] = *&self->_thirdPartyMsgMorningSat;
  toCopy[108] |= 0x200000uLL;
  v9 = *(&self->_has + 1);
  if ((v9 & 0x400000) == 0)
  {
LABEL_35:
    if ((v9 & 0x80000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_154;
  }

LABEL_153:
  toCopy[87] = *&self->_thirdPartyMsgMorningSun;
  toCopy[108] |= 0x400000uLL;
  v9 = *(&self->_has + 1);
  if ((v9 & 0x80000000) == 0)
  {
LABEL_36:
    if ((v9 & 0x10000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_155;
  }

LABEL_154:
  toCopy[96] = *&self->_thirdPartyMsgNoonWeekday;
  toCopy[108] |= 0x80000000uLL;
  v9 = *(&self->_has + 1);
  if ((v9 & 0x10000000) == 0)
  {
LABEL_37:
    if ((v9 & 0x20000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_156;
  }

LABEL_155:
  toCopy[93] = *&self->_thirdPartyMsgNoonFri;
  toCopy[108] |= 0x10000000uLL;
  v9 = *(&self->_has + 1);
  if ((v9 & 0x20000000) == 0)
  {
LABEL_38:
    if ((v9 & 0x40000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_157;
  }

LABEL_156:
  toCopy[94] = *&self->_thirdPartyMsgNoonSat;
  toCopy[108] |= 0x20000000uLL;
  v9 = *(&self->_has + 1);
  if ((v9 & 0x40000000) == 0)
  {
LABEL_39:
    if ((v9 & 0x80000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_158;
  }

LABEL_157:
  toCopy[95] = *&self->_thirdPartyMsgNoonSun;
  toCopy[108] |= 0x40000000uLL;
  v9 = *(&self->_has + 1);
  if ((v9 & 0x80000) == 0)
  {
LABEL_40:
    if ((v9 & 0x10000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_159;
  }

LABEL_158:
  toCopy[84] = *&self->_thirdPartyMsgEveWeekday;
  toCopy[108] |= 0x80000uLL;
  v9 = *(&self->_has + 1);
  if ((v9 & 0x10000) == 0)
  {
LABEL_41:
    if ((v9 & 0x20000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_160;
  }

LABEL_159:
  toCopy[81] = *&self->_thirdPartyMsgEveFri;
  toCopy[108] |= 0x10000uLL;
  v9 = *(&self->_has + 1);
  if ((v9 & 0x20000) == 0)
  {
LABEL_42:
    if ((v9 & 0x40000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_161;
  }

LABEL_160:
  toCopy[82] = *&self->_thirdPartyMsgEveSat;
  toCopy[108] |= 0x20000uLL;
  v9 = *(&self->_has + 1);
  if ((v9 & 0x40000) == 0)
  {
LABEL_43:
    if ((v9 & 0x8000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_162;
  }

LABEL_161:
  toCopy[83] = *&self->_thirdPartyMsgEveSun;
  toCopy[108] |= 0x40000uLL;
  v9 = *(&self->_has + 1);
  if ((v9 & 0x8000000) == 0)
  {
LABEL_44:
    if ((v9 & 0x1000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_163;
  }

LABEL_162:
  toCopy[92] = *&self->_thirdPartyMsgNightWeekday;
  toCopy[108] |= 0x8000000uLL;
  v9 = *(&self->_has + 1);
  if ((v9 & 0x1000000) == 0)
  {
LABEL_45:
    if ((v9 & 0x2000000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_164;
  }

LABEL_163:
  toCopy[89] = *&self->_thirdPartyMsgNightFri;
  toCopy[108] |= 0x1000000uLL;
  v9 = *(&self->_has + 1);
  if ((v9 & 0x2000000) == 0)
  {
LABEL_46:
    if ((v9 & 0x4000000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_165;
  }

LABEL_164:
  toCopy[90] = *&self->_thirdPartyMsgNightSat;
  toCopy[108] |= 0x2000000uLL;
  v9 = *(&self->_has + 1);
  if ((v9 & 0x4000000) == 0)
  {
LABEL_47:
    if ((v9 & 0x200000000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_48;
  }

LABEL_165:
  toCopy[91] = *&self->_thirdPartyMsgNightSun;
  toCopy[108] |= 0x4000000uLL;
  if ((*(&self->_has + 1) & 0x200000000) != 0)
  {
LABEL_48:
    toCopy[98] = *&self->_thirdPartyMsgTwoWeeks;
    toCopy[108] |= 0x200000000uLL;
  }

LABEL_49:
  if ((*(&self->_has + 6) & 0x40) != 0)
  {
    toCopy[55] = self->_callTotal;
    toCopy[107] |= 0x40000000000000uLL;
  }

  v10 = *(&self->_has + 1);
  if ((v10 & 0x400000000) != 0)
  {
    *(toCopy + 198) = self->_callBirthday;
    toCopy[108] |= 0x400000000uLL;
    v10 = *(&self->_has + 1);
  }

  if ((v10 & 0x8000000000) != 0)
  {
    *(toCopy + 203) = self->_contactFavorite;
    toCopy[108] |= 0x8000000000uLL;
  }

  v11 = *p_has;
  if ((*p_has & 0x80000000000000) != 0)
  {
    toCopy[56] = *&self->_callTotalDur;
    toCopy[107] |= 0x80000000000000uLL;
    v11 = self->_has;
    if ((v11 & 2) == 0)
    {
LABEL_57:
      if ((v11 & 0x4000000000) == 0)
      {
        goto LABEL_58;
      }

      goto LABEL_169;
    }
  }

  else if ((v11 & 2) == 0)
  {
    goto LABEL_57;
  }

  toCopy[2] = *&self->_callDayRatio;
  toCopy[107] |= 2uLL;
  v11 = self->_has;
  if ((v11 & 0x4000000000) == 0)
  {
LABEL_58:
    if ((v11 & 0x10000000000000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_170;
  }

LABEL_169:
  toCopy[39] = *&self->_callLongRatio;
  toCopy[107] |= 0x4000000000uLL;
  v11 = self->_has;
  if ((v11 & 0x10000000000000) == 0)
  {
LABEL_59:
    if ((v11 & 1) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_171;
  }

LABEL_170:
  toCopy[53] = *&self->_callOutgoingRatio;
  toCopy[107] |= 0x10000000000000uLL;
  v11 = self->_has;
  if ((v11 & 1) == 0)
  {
LABEL_60:
    if ((v11 & 0x8000000000) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_172;
  }

LABEL_171:
  toCopy[1] = *&self->_callAvgDur;
  toCopy[107] |= 1uLL;
  v11 = self->_has;
  if ((v11 & 0x8000000000) == 0)
  {
LABEL_61:
    if ((v11 & 0x80000000000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_173;
  }

LABEL_172:
  toCopy[40] = *&self->_callMaxDur;
  toCopy[107] |= 0x8000000000uLL;
  v11 = self->_has;
  if ((v11 & 0x80000000000) == 0)
  {
LABEL_62:
    if ((v11 & 0x10000000000) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_174;
  }

LABEL_173:
  toCopy[44] = *&self->_callMorningWeekday;
  toCopy[107] |= 0x80000000000uLL;
  v11 = self->_has;
  if ((v11 & 0x10000000000) == 0)
  {
LABEL_63:
    if ((v11 & 0x20000000000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_175;
  }

LABEL_174:
  toCopy[41] = *&self->_callMorningFri;
  toCopy[107] |= 0x10000000000uLL;
  v11 = self->_has;
  if ((v11 & 0x20000000000) == 0)
  {
LABEL_64:
    if ((v11 & 0x40000000000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_176;
  }

LABEL_175:
  toCopy[42] = *&self->_callMorningSat;
  toCopy[107] |= 0x20000000000uLL;
  v11 = self->_has;
  if ((v11 & 0x40000000000) == 0)
  {
LABEL_65:
    if ((v11 & 0x8000000000000) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_177;
  }

LABEL_176:
  toCopy[43] = *&self->_callMorningSun;
  toCopy[107] |= 0x40000000000uLL;
  v11 = self->_has;
  if ((v11 & 0x8000000000000) == 0)
  {
LABEL_66:
    if ((v11 & 0x1000000000000) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_178;
  }

LABEL_177:
  toCopy[52] = *&self->_callNoonWeekday;
  toCopy[107] |= 0x8000000000000uLL;
  v11 = self->_has;
  if ((v11 & 0x1000000000000) == 0)
  {
LABEL_67:
    if ((v11 & 0x2000000000000) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_179;
  }

LABEL_178:
  toCopy[49] = *&self->_callNoonFri;
  toCopy[107] |= 0x1000000000000uLL;
  v11 = self->_has;
  if ((v11 & 0x2000000000000) == 0)
  {
LABEL_68:
    if ((v11 & 0x4000000000000) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_180;
  }

LABEL_179:
  toCopy[50] = *&self->_callNoonSat;
  toCopy[107] |= 0x2000000000000uLL;
  v11 = self->_has;
  if ((v11 & 0x4000000000000) == 0)
  {
LABEL_69:
    if ((v11 & 0x200000) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_181;
  }

LABEL_180:
  toCopy[51] = *&self->_callNoonSun;
  toCopy[107] |= 0x4000000000000uLL;
  v11 = self->_has;
  if ((v11 & 0x200000) == 0)
  {
LABEL_70:
    if ((v11 & 0x40000) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_182;
  }

LABEL_181:
  toCopy[22] = *&self->_callEveWeekday;
  toCopy[107] |= 0x200000uLL;
  v11 = self->_has;
  if ((v11 & 0x40000) == 0)
  {
LABEL_71:
    if ((v11 & 0x80000) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_183;
  }

LABEL_182:
  toCopy[19] = *&self->_callEveFri;
  toCopy[107] |= 0x40000uLL;
  v11 = self->_has;
  if ((v11 & 0x80000) == 0)
  {
LABEL_72:
    if ((v11 & 0x100000) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_184;
  }

LABEL_183:
  toCopy[20] = *&self->_callEveSat;
  toCopy[107] |= 0x80000uLL;
  v11 = self->_has;
  if ((v11 & 0x100000) == 0)
  {
LABEL_73:
    if ((v11 & 0x800000000000) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_185;
  }

LABEL_184:
  toCopy[21] = *&self->_callEveSun;
  toCopy[107] |= 0x100000uLL;
  v11 = self->_has;
  if ((v11 & 0x800000000000) == 0)
  {
LABEL_74:
    if ((v11 & 0x100000000000) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_186;
  }

LABEL_185:
  toCopy[48] = *&self->_callNightWeekday;
  toCopy[107] |= 0x800000000000uLL;
  v11 = self->_has;
  if ((v11 & 0x100000000000) == 0)
  {
LABEL_75:
    if ((v11 & 0x200000000000) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_187;
  }

LABEL_186:
  toCopy[45] = *&self->_callNightFri;
  toCopy[107] |= 0x100000000000uLL;
  v11 = self->_has;
  if ((v11 & 0x200000000000) == 0)
  {
LABEL_76:
    if ((v11 & 0x400000000000) == 0)
    {
      goto LABEL_77;
    }

    goto LABEL_188;
  }

LABEL_187:
  toCopy[46] = *&self->_callNightSat;
  toCopy[107] |= 0x200000000000uLL;
  v11 = self->_has;
  if ((v11 & 0x400000000000) == 0)
  {
LABEL_77:
    if ((v11 & 0x200) == 0)
    {
      goto LABEL_78;
    }

    goto LABEL_189;
  }

LABEL_188:
  toCopy[47] = *&self->_callNightSun;
  toCopy[107] |= 0x400000000000uLL;
  v11 = self->_has;
  if ((v11 & 0x200) == 0)
  {
LABEL_78:
    if ((v11 & 0x40) == 0)
    {
      goto LABEL_79;
    }

    goto LABEL_190;
  }

LABEL_189:
  toCopy[10] = *&self->_callDurMorningWeekday;
  toCopy[107] |= 0x200uLL;
  v11 = self->_has;
  if ((v11 & 0x40) == 0)
  {
LABEL_79:
    if ((v11 & 0x80) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_191;
  }

LABEL_190:
  toCopy[7] = *&self->_callDurMorningFri;
  toCopy[107] |= 0x40uLL;
  v11 = self->_has;
  if ((v11 & 0x80) == 0)
  {
LABEL_80:
    if ((v11 & 0x100) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_192;
  }

LABEL_191:
  toCopy[8] = *&self->_callDurMorningSat;
  toCopy[107] |= 0x80uLL;
  v11 = self->_has;
  if ((v11 & 0x100) == 0)
  {
LABEL_81:
    if ((v11 & 0x20000) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_193;
  }

LABEL_192:
  toCopy[9] = *&self->_callDurMorningSun;
  toCopy[107] |= 0x100uLL;
  v11 = self->_has;
  if ((v11 & 0x20000) == 0)
  {
LABEL_82:
    if ((v11 & 0x4000) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_194;
  }

LABEL_193:
  toCopy[18] = *&self->_callDurNoonWeekday;
  toCopy[107] |= 0x20000uLL;
  v11 = self->_has;
  if ((v11 & 0x4000) == 0)
  {
LABEL_83:
    if ((v11 & 0x8000) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_195;
  }

LABEL_194:
  toCopy[15] = *&self->_callDurNoonFri;
  toCopy[107] |= 0x4000uLL;
  v11 = self->_has;
  if ((v11 & 0x8000) == 0)
  {
LABEL_84:
    if ((v11 & 0x10000) == 0)
    {
      goto LABEL_85;
    }

    goto LABEL_196;
  }

LABEL_195:
  toCopy[16] = *&self->_callDurNoonSat;
  toCopy[107] |= 0x8000uLL;
  v11 = self->_has;
  if ((v11 & 0x10000) == 0)
  {
LABEL_85:
    if ((v11 & 0x20) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_197;
  }

LABEL_196:
  toCopy[17] = *&self->_callDurNoonSun;
  toCopy[107] |= 0x10000uLL;
  v11 = self->_has;
  if ((v11 & 0x20) == 0)
  {
LABEL_86:
    if ((v11 & 4) == 0)
    {
      goto LABEL_87;
    }

    goto LABEL_198;
  }

LABEL_197:
  toCopy[6] = *&self->_callDurEveWeekday;
  toCopy[107] |= 0x20uLL;
  v11 = self->_has;
  if ((v11 & 4) == 0)
  {
LABEL_87:
    if ((v11 & 8) == 0)
    {
      goto LABEL_88;
    }

    goto LABEL_199;
  }

LABEL_198:
  toCopy[3] = *&self->_callDurEveFri;
  toCopy[107] |= 4uLL;
  v11 = self->_has;
  if ((v11 & 8) == 0)
  {
LABEL_88:
    if ((v11 & 0x10) == 0)
    {
      goto LABEL_89;
    }

    goto LABEL_200;
  }

LABEL_199:
  toCopy[4] = *&self->_callDurEveSat;
  toCopy[107] |= 8uLL;
  v11 = self->_has;
  if ((v11 & 0x10) == 0)
  {
LABEL_89:
    if ((v11 & 0x2000) == 0)
    {
      goto LABEL_90;
    }

    goto LABEL_201;
  }

LABEL_200:
  toCopy[5] = *&self->_callDurEveSun;
  toCopy[107] |= 0x10uLL;
  v11 = self->_has;
  if ((v11 & 0x2000) == 0)
  {
LABEL_90:
    if ((v11 & 0x400) == 0)
    {
      goto LABEL_91;
    }

    goto LABEL_202;
  }

LABEL_201:
  toCopy[14] = *&self->_callDurNightWeekday;
  toCopy[107] |= 0x2000uLL;
  v11 = self->_has;
  if ((v11 & 0x400) == 0)
  {
LABEL_91:
    if ((v11 & 0x800) == 0)
    {
      goto LABEL_92;
    }

    goto LABEL_203;
  }

LABEL_202:
  toCopy[11] = *&self->_callDurNightFri;
  toCopy[107] |= 0x400uLL;
  v11 = self->_has;
  if ((v11 & 0x800) == 0)
  {
LABEL_92:
    if ((v11 & 0x1000) == 0)
    {
      goto LABEL_93;
    }

    goto LABEL_204;
  }

LABEL_203:
  toCopy[12] = *&self->_callDurNightSat;
  toCopy[107] |= 0x800uLL;
  v11 = self->_has;
  if ((v11 & 0x1000) == 0)
  {
LABEL_93:
    if ((v11 & 0x20000000) == 0)
    {
      goto LABEL_94;
    }

    goto LABEL_205;
  }

LABEL_204:
  toCopy[13] = *&self->_callDurNightSun;
  toCopy[107] |= 0x1000uLL;
  v11 = self->_has;
  if ((v11 & 0x20000000) == 0)
  {
LABEL_94:
    if ((v11 & 0x4000000) == 0)
    {
      goto LABEL_95;
    }

    goto LABEL_206;
  }

LABEL_205:
  toCopy[30] = *&self->_callLongMorningWeekday;
  toCopy[107] |= 0x20000000uLL;
  v11 = self->_has;
  if ((v11 & 0x4000000) == 0)
  {
LABEL_95:
    if ((v11 & 0x8000000) == 0)
    {
      goto LABEL_96;
    }

    goto LABEL_207;
  }

LABEL_206:
  toCopy[27] = *&self->_callLongMorningFri;
  toCopy[107] |= 0x4000000uLL;
  v11 = self->_has;
  if ((v11 & 0x8000000) == 0)
  {
LABEL_96:
    if ((v11 & 0x10000000) == 0)
    {
      goto LABEL_97;
    }

    goto LABEL_208;
  }

LABEL_207:
  toCopy[28] = *&self->_callLongMorningSat;
  toCopy[107] |= 0x8000000uLL;
  v11 = self->_has;
  if ((v11 & 0x10000000) == 0)
  {
LABEL_97:
    if ((v11 & 0x2000000000) == 0)
    {
      goto LABEL_98;
    }

    goto LABEL_209;
  }

LABEL_208:
  toCopy[29] = *&self->_callLongMorningSun;
  toCopy[107] |= 0x10000000uLL;
  v11 = self->_has;
  if ((v11 & 0x2000000000) == 0)
  {
LABEL_98:
    if ((v11 & 0x400000000) == 0)
    {
      goto LABEL_99;
    }

    goto LABEL_210;
  }

LABEL_209:
  toCopy[38] = *&self->_callLongNoonWeekday;
  toCopy[107] |= 0x2000000000uLL;
  v11 = self->_has;
  if ((v11 & 0x400000000) == 0)
  {
LABEL_99:
    if ((v11 & 0x800000000) == 0)
    {
      goto LABEL_100;
    }

    goto LABEL_211;
  }

LABEL_210:
  toCopy[35] = *&self->_callLongNoonFri;
  toCopy[107] |= 0x400000000uLL;
  v11 = self->_has;
  if ((v11 & 0x800000000) == 0)
  {
LABEL_100:
    if ((v11 & 0x1000000000) == 0)
    {
      goto LABEL_101;
    }

    goto LABEL_212;
  }

LABEL_211:
  toCopy[36] = *&self->_callLongNoonSat;
  toCopy[107] |= 0x800000000uLL;
  v11 = self->_has;
  if ((v11 & 0x1000000000) == 0)
  {
LABEL_101:
    if ((v11 & 0x2000000) == 0)
    {
      goto LABEL_102;
    }

    goto LABEL_213;
  }

LABEL_212:
  toCopy[37] = *&self->_callLongNoonSun;
  toCopy[107] |= 0x1000000000uLL;
  v11 = self->_has;
  if ((v11 & 0x2000000) == 0)
  {
LABEL_102:
    if ((v11 & 0x400000) == 0)
    {
      goto LABEL_103;
    }

    goto LABEL_214;
  }

LABEL_213:
  toCopy[26] = *&self->_callLongEveWeekday;
  toCopy[107] |= 0x2000000uLL;
  v11 = self->_has;
  if ((v11 & 0x400000) == 0)
  {
LABEL_103:
    if ((v11 & 0x800000) == 0)
    {
      goto LABEL_104;
    }

    goto LABEL_215;
  }

LABEL_214:
  toCopy[23] = *&self->_callLongEveFri;
  toCopy[107] |= 0x400000uLL;
  v11 = self->_has;
  if ((v11 & 0x800000) == 0)
  {
LABEL_104:
    if ((v11 & 0x1000000) == 0)
    {
      goto LABEL_105;
    }

    goto LABEL_216;
  }

LABEL_215:
  toCopy[24] = *&self->_callLongEveSat;
  toCopy[107] |= 0x800000uLL;
  v11 = self->_has;
  if ((v11 & 0x1000000) == 0)
  {
LABEL_105:
    if ((v11 & 0x200000000) == 0)
    {
      goto LABEL_106;
    }

    goto LABEL_217;
  }

LABEL_216:
  toCopy[25] = *&self->_callLongEveSun;
  toCopy[107] |= 0x1000000uLL;
  v11 = self->_has;
  if ((v11 & 0x200000000) == 0)
  {
LABEL_106:
    if ((v11 & 0x40000000) == 0)
    {
      goto LABEL_107;
    }

    goto LABEL_218;
  }

LABEL_217:
  toCopy[34] = *&self->_callLongNightWeekday;
  toCopy[107] |= 0x200000000uLL;
  v11 = self->_has;
  if ((v11 & 0x40000000) == 0)
  {
LABEL_107:
    if ((v11 & 0x80000000) == 0)
    {
      goto LABEL_108;
    }

    goto LABEL_219;
  }

LABEL_218:
  toCopy[31] = *&self->_callLongNightFri;
  toCopy[107] |= 0x40000000uLL;
  v11 = self->_has;
  if ((v11 & 0x80000000) == 0)
  {
LABEL_108:
    if ((v11 & 0x100000000) == 0)
    {
      goto LABEL_109;
    }

    goto LABEL_220;
  }

LABEL_219:
  toCopy[32] = *&self->_callLongNightSat;
  toCopy[107] |= 0x80000000uLL;
  v11 = self->_has;
  if ((v11 & 0x100000000) == 0)
  {
LABEL_109:
    if ((v11 & 0x200000000000000) == 0)
    {
      goto LABEL_110;
    }

    goto LABEL_221;
  }

LABEL_220:
  toCopy[33] = *&self->_callLongNightSun;
  toCopy[107] |= 0x100000000uLL;
  v11 = self->_has;
  if ((v11 & 0x200000000000000) == 0)
  {
LABEL_110:
    if ((v11 & 0x20000000000000) == 0)
    {
      goto LABEL_111;
    }

    goto LABEL_222;
  }

LABEL_221:
  toCopy[58] = *&self->_callTwoWeeks;
  toCopy[107] |= 0x200000000000000uLL;
  v11 = self->_has;
  if ((v11 & 0x20000000000000) == 0)
  {
LABEL_111:
    if ((v11 & 0x100000000000000) == 0)
    {
      goto LABEL_113;
    }

    goto LABEL_112;
  }

LABEL_222:
  toCopy[54] = *&self->_callSixWeeks;
  toCopy[107] |= 0x20000000000000uLL;
  if ((*&self->_has & 0x100000000000000) != 0)
  {
LABEL_112:
    toCopy[57] = *&self->_callTwelveWeeks;
    toCopy[107] |= 0x100000000000000uLL;
  }

LABEL_113:
  if ((*(&self->_has + 12) & 0x40) != 0)
  {
    *(toCopy + 202) = self->_contactFamilyRelation;
    toCopy[108] |= 0x4000000000uLL;
  }

  if (self->_contactRelation)
  {
    v13 = toCopy;
    [toCopy setContactRelation:?];
    toCopy = v13;
  }

  v12 = *(&self->_has + 1);
  if ((v12 & 0x2000000000) != 0)
  {
    *(toCopy + 201) = self->_contactFamilyName;
    toCopy[108] |= 0x2000000000uLL;
    v12 = *(&self->_has + 1);
    if ((v12 & 0x800000000000) == 0)
    {
LABEL_119:
      if ((v12 & 0x800000000) == 0)
      {
        goto LABEL_120;
      }

      goto LABEL_226;
    }
  }

  else if ((v12 & 0x800000000000) == 0)
  {
    goto LABEL_119;
  }

  *(toCopy + 211) = self->_contactParent;
  toCopy[108] |= 0x800000000000uLL;
  v12 = *(&self->_has + 1);
  if ((v12 & 0x800000000) == 0)
  {
LABEL_120:
    if ((v12 & 0x1000000000) == 0)
    {
      goto LABEL_121;
    }

    goto LABEL_227;
  }

LABEL_226:
  *(toCopy + 199) = self->_contactEmergency;
  toCopy[108] |= 0x800000000uLL;
  v12 = *(&self->_has + 1);
  if ((v12 & 0x1000000000) == 0)
  {
LABEL_121:
    if ((v12 & 0x200000000000) == 0)
    {
      goto LABEL_122;
    }

    goto LABEL_228;
  }

LABEL_227:
  *(toCopy + 200) = self->_contactEmergencyFamily;
  toCopy[108] |= 0x1000000000uLL;
  v12 = *(&self->_has + 1);
  if ((v12 & 0x200000000000) == 0)
  {
LABEL_122:
    if ((v12 & 0x400000000000) == 0)
    {
      goto LABEL_123;
    }

    goto LABEL_229;
  }

LABEL_228:
  *(toCopy + 209) = self->_contactInHome;
  toCopy[108] |= 0x200000000000uLL;
  v12 = *(&self->_has + 1);
  if ((v12 & 0x400000000000) == 0)
  {
LABEL_123:
    if ((v12 & 0x10000000000) == 0)
    {
      goto LABEL_124;
    }

    goto LABEL_230;
  }

LABEL_229:
  *(toCopy + 210) = self->_contactInPhotos;
  toCopy[108] |= 0x400000000000uLL;
  v12 = *(&self->_has + 1);
  if ((v12 & 0x10000000000) == 0)
  {
LABEL_124:
    if ((v12 & 0x20000000000) == 0)
    {
      goto LABEL_125;
    }

    goto LABEL_231;
  }

LABEL_230:
  *(toCopy + 204) = self->_contactInAirDrop;
  toCopy[108] |= 0x10000000000uLL;
  v12 = *(&self->_has + 1);
  if ((v12 & 0x20000000000) == 0)
  {
LABEL_125:
    if ((v12 & 0x80000000000) == 0)
    {
      goto LABEL_126;
    }

    goto LABEL_232;
  }

LABEL_231:
  *(toCopy + 205) = self->_contactInAirDropAtHome;
  toCopy[108] |= 0x20000000000uLL;
  v12 = *(&self->_has + 1);
  if ((v12 & 0x80000000000) == 0)
  {
LABEL_126:
    if ((v12 & 0x100000000000) == 0)
    {
      goto LABEL_127;
    }

    goto LABEL_233;
  }

LABEL_232:
  *(toCopy + 207) = self->_contactInFMFFollowingMe;
  toCopy[108] |= 0x80000000000uLL;
  v12 = *(&self->_has + 1);
  if ((v12 & 0x100000000000) == 0)
  {
LABEL_127:
    if ((v12 & 0x40000000000) == 0)
    {
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_233:
  *(toCopy + 208) = self->_contactInFMFSharingWithMe;
  toCopy[108] |= 0x100000000000uLL;
  if ((*(&self->_has + 1) & 0x40000000000) != 0)
  {
LABEL_128:
    *(toCopy + 206) = self->_contactInFMFFavorite;
    toCopy[108] |= 0x40000000000uLL;
  }

LABEL_129:
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  p_has = &self->_has;
  if ((*(&self->_has + 9) & 0x20) != 0)
  {
    *(v5 + 624) = self->_firstPartyMsgTotal;
    *(v5 + 864) |= 0x2000uLL;
  }

  if ((*(&self->_has + 7) & 4) != 0)
  {
    *(v5 + 472) = self->_firstPartyMsgDayRatio;
    *(v5 + 856) |= 0x400000000000000uLL;
  }

  v8 = *(&self->_has + 1);
  if ((v8 & 0x800) != 0)
  {
    *(v5 + 608) = self->_firstPartyMsgOutgoingRatio;
    *(v5 + 864) |= 0x800uLL;
    v8 = *(&self->_has + 1);
  }

  if ((v8 & 4) != 0)
  {
    *(v5 + 536) = self->_firstPartyMsgMorningWeekday;
    *(v5 + 864) |= 4uLL;
  }

  if ((*p_has & 0x8000000000000000) != 0)
  {
    *(v5 + 512) = self->_firstPartyMsgMorningFri;
    *(v5 + 856) |= 0x8000000000000000;
  }

  v9 = *(&self->_has + 1);
  if (v9)
  {
    *(v5 + 520) = self->_firstPartyMsgMorningSat;
    *(v5 + 864) |= 1uLL;
    v9 = *(&self->_has + 1);
    if ((v9 & 2) == 0)
    {
LABEL_13:
      if ((v9 & 0x400) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_130;
    }
  }

  else if ((v9 & 2) == 0)
  {
    goto LABEL_13;
  }

  *(v5 + 528) = self->_firstPartyMsgMorningSun;
  *(v5 + 864) |= 2uLL;
  v9 = *(&self->_has + 1);
  if ((v9 & 0x400) == 0)
  {
LABEL_14:
    if ((v9 & 0x80) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_131;
  }

LABEL_130:
  *(v5 + 600) = self->_firstPartyMsgNoonWeekday;
  *(v5 + 864) |= 0x400uLL;
  v9 = *(&self->_has + 1);
  if ((v9 & 0x80) == 0)
  {
LABEL_15:
    if ((v9 & 0x100) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_132;
  }

LABEL_131:
  *(v5 + 576) = self->_firstPartyMsgNoonFri;
  *(v5 + 864) |= 0x80uLL;
  v9 = *(&self->_has + 1);
  if ((v9 & 0x100) == 0)
  {
LABEL_16:
    if ((v9 & 0x200) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_132:
  *(v5 + 584) = self->_firstPartyMsgNoonSat;
  *(v5 + 864) |= 0x100uLL;
  if ((*(&self->_has + 1) & 0x200) != 0)
  {
LABEL_17:
    *(v5 + 592) = self->_firstPartyMsgNoonSun;
    *(v5 + 864) |= 0x200uLL;
  }

LABEL_18:
  has = *p_has;
  if ((*p_has & 0x4000000000000000) != 0)
  {
    *(v5 + 504) = self->_firstPartyMsgEveWeekday;
    *(v5 + 856) |= 0x4000000000000000uLL;
    has = self->_has;
    if ((has & 0x800000000000000) == 0)
    {
LABEL_20:
      if ((has & 0x1000000000000000) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_136;
    }
  }

  else if ((has & 0x800000000000000) == 0)
  {
    goto LABEL_20;
  }

  *(v5 + 480) = self->_firstPartyMsgEveFri;
  *(v5 + 856) |= 0x800000000000000uLL;
  has = self->_has;
  if ((has & 0x1000000000000000) == 0)
  {
LABEL_21:
    if ((has & 0x2000000000000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_136:
  *(v5 + 488) = self->_firstPartyMsgEveSat;
  *(v5 + 856) |= 0x1000000000000000uLL;
  if ((*&self->_has & 0x2000000000000000) != 0)
  {
LABEL_22:
    *(v5 + 496) = self->_firstPartyMsgEveSun;
    *(v5 + 856) |= 0x2000000000000000uLL;
  }

LABEL_23:
  v11 = *(&self->_has + 1);
  if ((v11 & 0x40) != 0)
  {
    *(v5 + 568) = self->_firstPartyMsgNightWeekday;
    *(v5 + 864) |= 0x40uLL;
    v11 = *(&self->_has + 1);
    if ((v11 & 8) == 0)
    {
LABEL_25:
      if ((v11 & 0x10) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_140;
    }
  }

  else if ((v11 & 8) == 0)
  {
    goto LABEL_25;
  }

  *(v5 + 544) = self->_firstPartyMsgNightFri;
  *(v5 + 864) |= 8uLL;
  v11 = *(&self->_has + 1);
  if ((v11 & 0x10) == 0)
  {
LABEL_26:
    if ((v11 & 0x20) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_141;
  }

LABEL_140:
  *(v5 + 552) = self->_firstPartyMsgNightSat;
  *(v5 + 864) |= 0x10uLL;
  v11 = *(&self->_has + 1);
  if ((v11 & 0x20) == 0)
  {
LABEL_27:
    if ((v11 & 0x4000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_142;
  }

LABEL_141:
  *(v5 + 560) = self->_firstPartyMsgNightSun;
  *(v5 + 864) |= 0x20uLL;
  v11 = *(&self->_has + 1);
  if ((v11 & 0x4000) == 0)
  {
LABEL_28:
    if ((v11 & 0x1000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_143;
  }

LABEL_142:
  *(v5 + 632) = self->_firstPartyMsgTwoWeeks;
  *(v5 + 864) |= 0x4000uLL;
  v11 = *(&self->_has + 1);
  if ((v11 & 0x1000) == 0)
  {
LABEL_29:
    if ((v11 & 0x100000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_144;
  }

LABEL_143:
  *(v5 + 616) = self->_firstPartyMsgSixWeeks;
  *(v5 + 864) |= 0x1000uLL;
  v11 = *(&self->_has + 1);
  if ((v11 & 0x100000000) == 0)
  {
LABEL_30:
    if ((v11 & 0x8000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_145;
  }

LABEL_144:
  *(v5 + 776) = self->_thirdPartyMsgTotal;
  *(v5 + 864) |= 0x100000000uLL;
  v11 = *(&self->_has + 1);
  if ((v11 & 0x8000) == 0)
  {
LABEL_31:
    if ((v11 & 0x800000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_146;
  }

LABEL_145:
  *(v5 + 640) = self->_thirdPartyMsgDayRatio;
  *(v5 + 864) |= 0x8000uLL;
  v11 = *(&self->_has + 1);
  if ((v11 & 0x800000) == 0)
  {
LABEL_32:
    if ((v11 & 0x100000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_147;
  }

LABEL_146:
  *(v5 + 704) = self->_thirdPartyMsgMorningWeekday;
  *(v5 + 864) |= 0x800000uLL;
  v11 = *(&self->_has + 1);
  if ((v11 & 0x100000) == 0)
  {
LABEL_33:
    if ((v11 & 0x200000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_148;
  }

LABEL_147:
  *(v5 + 680) = self->_thirdPartyMsgMorningFri;
  *(v5 + 864) |= 0x100000uLL;
  v11 = *(&self->_has + 1);
  if ((v11 & 0x200000) == 0)
  {
LABEL_34:
    if ((v11 & 0x400000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_149;
  }

LABEL_148:
  *(v5 + 688) = self->_thirdPartyMsgMorningSat;
  *(v5 + 864) |= 0x200000uLL;
  v11 = *(&self->_has + 1);
  if ((v11 & 0x400000) == 0)
  {
LABEL_35:
    if ((v11 & 0x80000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_150;
  }

LABEL_149:
  *(v5 + 696) = self->_thirdPartyMsgMorningSun;
  *(v5 + 864) |= 0x400000uLL;
  v11 = *(&self->_has + 1);
  if ((v11 & 0x80000000) == 0)
  {
LABEL_36:
    if ((v11 & 0x10000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_151;
  }

LABEL_150:
  *(v5 + 768) = self->_thirdPartyMsgNoonWeekday;
  *(v5 + 864) |= 0x80000000uLL;
  v11 = *(&self->_has + 1);
  if ((v11 & 0x10000000) == 0)
  {
LABEL_37:
    if ((v11 & 0x20000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_152;
  }

LABEL_151:
  *(v5 + 744) = self->_thirdPartyMsgNoonFri;
  *(v5 + 864) |= 0x10000000uLL;
  v11 = *(&self->_has + 1);
  if ((v11 & 0x20000000) == 0)
  {
LABEL_38:
    if ((v11 & 0x40000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_153;
  }

LABEL_152:
  *(v5 + 752) = self->_thirdPartyMsgNoonSat;
  *(v5 + 864) |= 0x20000000uLL;
  v11 = *(&self->_has + 1);
  if ((v11 & 0x40000000) == 0)
  {
LABEL_39:
    if ((v11 & 0x80000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_154;
  }

LABEL_153:
  *(v5 + 760) = self->_thirdPartyMsgNoonSun;
  *(v5 + 864) |= 0x40000000uLL;
  v11 = *(&self->_has + 1);
  if ((v11 & 0x80000) == 0)
  {
LABEL_40:
    if ((v11 & 0x10000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_155;
  }

LABEL_154:
  *(v5 + 672) = self->_thirdPartyMsgEveWeekday;
  *(v5 + 864) |= 0x80000uLL;
  v11 = *(&self->_has + 1);
  if ((v11 & 0x10000) == 0)
  {
LABEL_41:
    if ((v11 & 0x20000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_156;
  }

LABEL_155:
  *(v5 + 648) = self->_thirdPartyMsgEveFri;
  *(v5 + 864) |= 0x10000uLL;
  v11 = *(&self->_has + 1);
  if ((v11 & 0x20000) == 0)
  {
LABEL_42:
    if ((v11 & 0x40000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_157;
  }

LABEL_156:
  *(v5 + 656) = self->_thirdPartyMsgEveSat;
  *(v5 + 864) |= 0x20000uLL;
  v11 = *(&self->_has + 1);
  if ((v11 & 0x40000) == 0)
  {
LABEL_43:
    if ((v11 & 0x8000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_158;
  }

LABEL_157:
  *(v5 + 664) = self->_thirdPartyMsgEveSun;
  *(v5 + 864) |= 0x40000uLL;
  v11 = *(&self->_has + 1);
  if ((v11 & 0x8000000) == 0)
  {
LABEL_44:
    if ((v11 & 0x1000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_159;
  }

LABEL_158:
  *(v5 + 736) = self->_thirdPartyMsgNightWeekday;
  *(v5 + 864) |= 0x8000000uLL;
  v11 = *(&self->_has + 1);
  if ((v11 & 0x1000000) == 0)
  {
LABEL_45:
    if ((v11 & 0x2000000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_160;
  }

LABEL_159:
  *(v5 + 712) = self->_thirdPartyMsgNightFri;
  *(v5 + 864) |= 0x1000000uLL;
  v11 = *(&self->_has + 1);
  if ((v11 & 0x2000000) == 0)
  {
LABEL_46:
    if ((v11 & 0x4000000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_161;
  }

LABEL_160:
  *(v5 + 720) = self->_thirdPartyMsgNightSat;
  *(v5 + 864) |= 0x2000000uLL;
  v11 = *(&self->_has + 1);
  if ((v11 & 0x4000000) == 0)
  {
LABEL_47:
    if ((v11 & 0x200000000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_48;
  }

LABEL_161:
  *(v5 + 728) = self->_thirdPartyMsgNightSun;
  *(v5 + 864) |= 0x4000000uLL;
  if ((*(&self->_has + 1) & 0x200000000) != 0)
  {
LABEL_48:
    *(v5 + 784) = self->_thirdPartyMsgTwoWeeks;
    *(v5 + 864) |= 0x200000000uLL;
  }

LABEL_49:
  if ((*(&self->_has + 6) & 0x40) != 0)
  {
    *(v5 + 440) = self->_callTotal;
    *(v5 + 856) |= 0x40000000000000uLL;
  }

  v12 = *(&self->_has + 1);
  if ((v12 & 0x400000000) != 0)
  {
    *(v5 + 792) = self->_callBirthday;
    *(v5 + 864) |= 0x400000000uLL;
    v12 = *(&self->_has + 1);
  }

  if ((v12 & 0x8000000000) != 0)
  {
    *(v5 + 812) = self->_contactFavorite;
    *(v5 + 864) |= 0x8000000000uLL;
  }

  v13 = *p_has;
  if ((*p_has & 0x80000000000000) != 0)
  {
    *(v5 + 448) = self->_callTotalDur;
    *(v5 + 856) |= 0x80000000000000uLL;
    v13 = self->_has;
    if ((v13 & 2) == 0)
    {
LABEL_57:
      if ((v13 & 0x4000000000) == 0)
      {
        goto LABEL_58;
      }

      goto LABEL_165;
    }
  }

  else if ((v13 & 2) == 0)
  {
    goto LABEL_57;
  }

  *(v5 + 16) = self->_callDayRatio;
  *(v5 + 856) |= 2uLL;
  v13 = self->_has;
  if ((v13 & 0x4000000000) == 0)
  {
LABEL_58:
    if ((v13 & 0x10000000000000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_166;
  }

LABEL_165:
  *(v5 + 312) = self->_callLongRatio;
  *(v5 + 856) |= 0x4000000000uLL;
  v13 = self->_has;
  if ((v13 & 0x10000000000000) == 0)
  {
LABEL_59:
    if ((v13 & 1) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_167;
  }

LABEL_166:
  *(v5 + 424) = self->_callOutgoingRatio;
  *(v5 + 856) |= 0x10000000000000uLL;
  v13 = self->_has;
  if ((v13 & 1) == 0)
  {
LABEL_60:
    if ((v13 & 0x8000000000) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_168;
  }

LABEL_167:
  *(v5 + 8) = self->_callAvgDur;
  *(v5 + 856) |= 1uLL;
  v13 = self->_has;
  if ((v13 & 0x8000000000) == 0)
  {
LABEL_61:
    if ((v13 & 0x80000000000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_169;
  }

LABEL_168:
  *(v5 + 320) = self->_callMaxDur;
  *(v5 + 856) |= 0x8000000000uLL;
  v13 = self->_has;
  if ((v13 & 0x80000000000) == 0)
  {
LABEL_62:
    if ((v13 & 0x10000000000) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_170;
  }

LABEL_169:
  *(v5 + 352) = self->_callMorningWeekday;
  *(v5 + 856) |= 0x80000000000uLL;
  v13 = self->_has;
  if ((v13 & 0x10000000000) == 0)
  {
LABEL_63:
    if ((v13 & 0x20000000000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_171;
  }

LABEL_170:
  *(v5 + 328) = self->_callMorningFri;
  *(v5 + 856) |= 0x10000000000uLL;
  v13 = self->_has;
  if ((v13 & 0x20000000000) == 0)
  {
LABEL_64:
    if ((v13 & 0x40000000000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_172;
  }

LABEL_171:
  *(v5 + 336) = self->_callMorningSat;
  *(v5 + 856) |= 0x20000000000uLL;
  v13 = self->_has;
  if ((v13 & 0x40000000000) == 0)
  {
LABEL_65:
    if ((v13 & 0x8000000000000) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_173;
  }

LABEL_172:
  *(v5 + 344) = self->_callMorningSun;
  *(v5 + 856) |= 0x40000000000uLL;
  v13 = self->_has;
  if ((v13 & 0x8000000000000) == 0)
  {
LABEL_66:
    if ((v13 & 0x1000000000000) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_174;
  }

LABEL_173:
  *(v5 + 416) = self->_callNoonWeekday;
  *(v5 + 856) |= 0x8000000000000uLL;
  v13 = self->_has;
  if ((v13 & 0x1000000000000) == 0)
  {
LABEL_67:
    if ((v13 & 0x2000000000000) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_175;
  }

LABEL_174:
  *(v5 + 392) = self->_callNoonFri;
  *(v5 + 856) |= 0x1000000000000uLL;
  v13 = self->_has;
  if ((v13 & 0x2000000000000) == 0)
  {
LABEL_68:
    if ((v13 & 0x4000000000000) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_176;
  }

LABEL_175:
  *(v5 + 400) = self->_callNoonSat;
  *(v5 + 856) |= 0x2000000000000uLL;
  v13 = self->_has;
  if ((v13 & 0x4000000000000) == 0)
  {
LABEL_69:
    if ((v13 & 0x200000) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_177;
  }

LABEL_176:
  *(v5 + 408) = self->_callNoonSun;
  *(v5 + 856) |= 0x4000000000000uLL;
  v13 = self->_has;
  if ((v13 & 0x200000) == 0)
  {
LABEL_70:
    if ((v13 & 0x40000) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_178;
  }

LABEL_177:
  *(v5 + 176) = self->_callEveWeekday;
  *(v5 + 856) |= 0x200000uLL;
  v13 = self->_has;
  if ((v13 & 0x40000) == 0)
  {
LABEL_71:
    if ((v13 & 0x80000) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_179;
  }

LABEL_178:
  *(v5 + 152) = self->_callEveFri;
  *(v5 + 856) |= 0x40000uLL;
  v13 = self->_has;
  if ((v13 & 0x80000) == 0)
  {
LABEL_72:
    if ((v13 & 0x100000) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_180;
  }

LABEL_179:
  *(v5 + 160) = self->_callEveSat;
  *(v5 + 856) |= 0x80000uLL;
  v13 = self->_has;
  if ((v13 & 0x100000) == 0)
  {
LABEL_73:
    if ((v13 & 0x800000000000) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_181;
  }

LABEL_180:
  *(v5 + 168) = self->_callEveSun;
  *(v5 + 856) |= 0x100000uLL;
  v13 = self->_has;
  if ((v13 & 0x800000000000) == 0)
  {
LABEL_74:
    if ((v13 & 0x100000000000) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_182;
  }

LABEL_181:
  *(v5 + 384) = self->_callNightWeekday;
  *(v5 + 856) |= 0x800000000000uLL;
  v13 = self->_has;
  if ((v13 & 0x100000000000) == 0)
  {
LABEL_75:
    if ((v13 & 0x200000000000) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_183;
  }

LABEL_182:
  *(v5 + 360) = self->_callNightFri;
  *(v5 + 856) |= 0x100000000000uLL;
  v13 = self->_has;
  if ((v13 & 0x200000000000) == 0)
  {
LABEL_76:
    if ((v13 & 0x400000000000) == 0)
    {
      goto LABEL_77;
    }

    goto LABEL_184;
  }

LABEL_183:
  *(v5 + 368) = self->_callNightSat;
  *(v5 + 856) |= 0x200000000000uLL;
  v13 = self->_has;
  if ((v13 & 0x400000000000) == 0)
  {
LABEL_77:
    if ((v13 & 0x200) == 0)
    {
      goto LABEL_78;
    }

    goto LABEL_185;
  }

LABEL_184:
  *(v5 + 376) = self->_callNightSun;
  *(v5 + 856) |= 0x400000000000uLL;
  v13 = self->_has;
  if ((v13 & 0x200) == 0)
  {
LABEL_78:
    if ((v13 & 0x40) == 0)
    {
      goto LABEL_79;
    }

    goto LABEL_186;
  }

LABEL_185:
  *(v5 + 80) = self->_callDurMorningWeekday;
  *(v5 + 856) |= 0x200uLL;
  v13 = self->_has;
  if ((v13 & 0x40) == 0)
  {
LABEL_79:
    if ((v13 & 0x80) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_187;
  }

LABEL_186:
  *(v5 + 56) = self->_callDurMorningFri;
  *(v5 + 856) |= 0x40uLL;
  v13 = self->_has;
  if ((v13 & 0x80) == 0)
  {
LABEL_80:
    if ((v13 & 0x100) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_188;
  }

LABEL_187:
  *(v5 + 64) = self->_callDurMorningSat;
  *(v5 + 856) |= 0x80uLL;
  v13 = self->_has;
  if ((v13 & 0x100) == 0)
  {
LABEL_81:
    if ((v13 & 0x20000) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_189;
  }

LABEL_188:
  *(v5 + 72) = self->_callDurMorningSun;
  *(v5 + 856) |= 0x100uLL;
  v13 = self->_has;
  if ((v13 & 0x20000) == 0)
  {
LABEL_82:
    if ((v13 & 0x4000) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_190;
  }

LABEL_189:
  *(v5 + 144) = self->_callDurNoonWeekday;
  *(v5 + 856) |= 0x20000uLL;
  v13 = self->_has;
  if ((v13 & 0x4000) == 0)
  {
LABEL_83:
    if ((v13 & 0x8000) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_191;
  }

LABEL_190:
  *(v5 + 120) = self->_callDurNoonFri;
  *(v5 + 856) |= 0x4000uLL;
  v13 = self->_has;
  if ((v13 & 0x8000) == 0)
  {
LABEL_84:
    if ((v13 & 0x10000) == 0)
    {
      goto LABEL_85;
    }

    goto LABEL_192;
  }

LABEL_191:
  *(v5 + 128) = self->_callDurNoonSat;
  *(v5 + 856) |= 0x8000uLL;
  v13 = self->_has;
  if ((v13 & 0x10000) == 0)
  {
LABEL_85:
    if ((v13 & 0x20) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_193;
  }

LABEL_192:
  *(v5 + 136) = self->_callDurNoonSun;
  *(v5 + 856) |= 0x10000uLL;
  v13 = self->_has;
  if ((v13 & 0x20) == 0)
  {
LABEL_86:
    if ((v13 & 4) == 0)
    {
      goto LABEL_87;
    }

    goto LABEL_194;
  }

LABEL_193:
  *(v5 + 48) = self->_callDurEveWeekday;
  *(v5 + 856) |= 0x20uLL;
  v13 = self->_has;
  if ((v13 & 4) == 0)
  {
LABEL_87:
    if ((v13 & 8) == 0)
    {
      goto LABEL_88;
    }

    goto LABEL_195;
  }

LABEL_194:
  *(v5 + 24) = self->_callDurEveFri;
  *(v5 + 856) |= 4uLL;
  v13 = self->_has;
  if ((v13 & 8) == 0)
  {
LABEL_88:
    if ((v13 & 0x10) == 0)
    {
      goto LABEL_89;
    }

    goto LABEL_196;
  }

LABEL_195:
  *(v5 + 32) = self->_callDurEveSat;
  *(v5 + 856) |= 8uLL;
  v13 = self->_has;
  if ((v13 & 0x10) == 0)
  {
LABEL_89:
    if ((v13 & 0x2000) == 0)
    {
      goto LABEL_90;
    }

    goto LABEL_197;
  }

LABEL_196:
  *(v5 + 40) = self->_callDurEveSun;
  *(v5 + 856) |= 0x10uLL;
  v13 = self->_has;
  if ((v13 & 0x2000) == 0)
  {
LABEL_90:
    if ((v13 & 0x400) == 0)
    {
      goto LABEL_91;
    }

    goto LABEL_198;
  }

LABEL_197:
  *(v5 + 112) = self->_callDurNightWeekday;
  *(v5 + 856) |= 0x2000uLL;
  v13 = self->_has;
  if ((v13 & 0x400) == 0)
  {
LABEL_91:
    if ((v13 & 0x800) == 0)
    {
      goto LABEL_92;
    }

    goto LABEL_199;
  }

LABEL_198:
  *(v5 + 88) = self->_callDurNightFri;
  *(v5 + 856) |= 0x400uLL;
  v13 = self->_has;
  if ((v13 & 0x800) == 0)
  {
LABEL_92:
    if ((v13 & 0x1000) == 0)
    {
      goto LABEL_93;
    }

    goto LABEL_200;
  }

LABEL_199:
  *(v5 + 96) = self->_callDurNightSat;
  *(v5 + 856) |= 0x800uLL;
  v13 = self->_has;
  if ((v13 & 0x1000) == 0)
  {
LABEL_93:
    if ((v13 & 0x20000000) == 0)
    {
      goto LABEL_94;
    }

    goto LABEL_201;
  }

LABEL_200:
  *(v5 + 104) = self->_callDurNightSun;
  *(v5 + 856) |= 0x1000uLL;
  v13 = self->_has;
  if ((v13 & 0x20000000) == 0)
  {
LABEL_94:
    if ((v13 & 0x4000000) == 0)
    {
      goto LABEL_95;
    }

    goto LABEL_202;
  }

LABEL_201:
  *(v5 + 240) = self->_callLongMorningWeekday;
  *(v5 + 856) |= 0x20000000uLL;
  v13 = self->_has;
  if ((v13 & 0x4000000) == 0)
  {
LABEL_95:
    if ((v13 & 0x8000000) == 0)
    {
      goto LABEL_96;
    }

    goto LABEL_203;
  }

LABEL_202:
  *(v5 + 216) = self->_callLongMorningFri;
  *(v5 + 856) |= 0x4000000uLL;
  v13 = self->_has;
  if ((v13 & 0x8000000) == 0)
  {
LABEL_96:
    if ((v13 & 0x10000000) == 0)
    {
      goto LABEL_97;
    }

    goto LABEL_204;
  }

LABEL_203:
  *(v5 + 224) = self->_callLongMorningSat;
  *(v5 + 856) |= 0x8000000uLL;
  v13 = self->_has;
  if ((v13 & 0x10000000) == 0)
  {
LABEL_97:
    if ((v13 & 0x2000000000) == 0)
    {
      goto LABEL_98;
    }

    goto LABEL_205;
  }

LABEL_204:
  *(v5 + 232) = self->_callLongMorningSun;
  *(v5 + 856) |= 0x10000000uLL;
  v13 = self->_has;
  if ((v13 & 0x2000000000) == 0)
  {
LABEL_98:
    if ((v13 & 0x400000000) == 0)
    {
      goto LABEL_99;
    }

    goto LABEL_206;
  }

LABEL_205:
  *(v5 + 304) = self->_callLongNoonWeekday;
  *(v5 + 856) |= 0x2000000000uLL;
  v13 = self->_has;
  if ((v13 & 0x400000000) == 0)
  {
LABEL_99:
    if ((v13 & 0x800000000) == 0)
    {
      goto LABEL_100;
    }

    goto LABEL_207;
  }

LABEL_206:
  *(v5 + 280) = self->_callLongNoonFri;
  *(v5 + 856) |= 0x400000000uLL;
  v13 = self->_has;
  if ((v13 & 0x800000000) == 0)
  {
LABEL_100:
    if ((v13 & 0x1000000000) == 0)
    {
      goto LABEL_101;
    }

    goto LABEL_208;
  }

LABEL_207:
  *(v5 + 288) = self->_callLongNoonSat;
  *(v5 + 856) |= 0x800000000uLL;
  v13 = self->_has;
  if ((v13 & 0x1000000000) == 0)
  {
LABEL_101:
    if ((v13 & 0x2000000) == 0)
    {
      goto LABEL_102;
    }

    goto LABEL_209;
  }

LABEL_208:
  *(v5 + 296) = self->_callLongNoonSun;
  *(v5 + 856) |= 0x1000000000uLL;
  v13 = self->_has;
  if ((v13 & 0x2000000) == 0)
  {
LABEL_102:
    if ((v13 & 0x400000) == 0)
    {
      goto LABEL_103;
    }

    goto LABEL_210;
  }

LABEL_209:
  *(v5 + 208) = self->_callLongEveWeekday;
  *(v5 + 856) |= 0x2000000uLL;
  v13 = self->_has;
  if ((v13 & 0x400000) == 0)
  {
LABEL_103:
    if ((v13 & 0x800000) == 0)
    {
      goto LABEL_104;
    }

    goto LABEL_211;
  }

LABEL_210:
  *(v5 + 184) = self->_callLongEveFri;
  *(v5 + 856) |= 0x400000uLL;
  v13 = self->_has;
  if ((v13 & 0x800000) == 0)
  {
LABEL_104:
    if ((v13 & 0x1000000) == 0)
    {
      goto LABEL_105;
    }

    goto LABEL_212;
  }

LABEL_211:
  *(v5 + 192) = self->_callLongEveSat;
  *(v5 + 856) |= 0x800000uLL;
  v13 = self->_has;
  if ((v13 & 0x1000000) == 0)
  {
LABEL_105:
    if ((v13 & 0x200000000) == 0)
    {
      goto LABEL_106;
    }

    goto LABEL_213;
  }

LABEL_212:
  *(v5 + 200) = self->_callLongEveSun;
  *(v5 + 856) |= 0x1000000uLL;
  v13 = self->_has;
  if ((v13 & 0x200000000) == 0)
  {
LABEL_106:
    if ((v13 & 0x40000000) == 0)
    {
      goto LABEL_107;
    }

    goto LABEL_214;
  }

LABEL_213:
  *(v5 + 272) = self->_callLongNightWeekday;
  *(v5 + 856) |= 0x200000000uLL;
  v13 = self->_has;
  if ((v13 & 0x40000000) == 0)
  {
LABEL_107:
    if ((v13 & 0x80000000) == 0)
    {
      goto LABEL_108;
    }

    goto LABEL_215;
  }

LABEL_214:
  *(v5 + 248) = self->_callLongNightFri;
  *(v5 + 856) |= 0x40000000uLL;
  v13 = self->_has;
  if ((v13 & 0x80000000) == 0)
  {
LABEL_108:
    if ((v13 & 0x100000000) == 0)
    {
      goto LABEL_109;
    }

    goto LABEL_216;
  }

LABEL_215:
  *(v5 + 256) = self->_callLongNightSat;
  *(v5 + 856) |= 0x80000000uLL;
  v13 = self->_has;
  if ((v13 & 0x100000000) == 0)
  {
LABEL_109:
    if ((v13 & 0x200000000000000) == 0)
    {
      goto LABEL_110;
    }

    goto LABEL_217;
  }

LABEL_216:
  *(v5 + 264) = self->_callLongNightSun;
  *(v5 + 856) |= 0x100000000uLL;
  v13 = self->_has;
  if ((v13 & 0x200000000000000) == 0)
  {
LABEL_110:
    if ((v13 & 0x20000000000000) == 0)
    {
      goto LABEL_111;
    }

    goto LABEL_218;
  }

LABEL_217:
  *(v5 + 464) = self->_callTwoWeeks;
  *(v5 + 856) |= 0x200000000000000uLL;
  v13 = self->_has;
  if ((v13 & 0x20000000000000) == 0)
  {
LABEL_111:
    if ((v13 & 0x100000000000000) == 0)
    {
      goto LABEL_113;
    }

    goto LABEL_112;
  }

LABEL_218:
  *(v5 + 432) = self->_callSixWeeks;
  *(v5 + 856) |= 0x20000000000000uLL;
  if ((*&self->_has & 0x100000000000000) != 0)
  {
LABEL_112:
    *(v5 + 456) = self->_callTwelveWeeks;
    *(v5 + 856) |= 0x100000000000000uLL;
  }

LABEL_113:
  if ((*(&self->_has + 12) & 0x40) != 0)
  {
    *(v5 + 808) = self->_contactFamilyRelation;
    *(v5 + 864) |= 0x4000000000uLL;
  }

  v14 = [(NSString *)self->_contactRelation copyWithZone:zone];
  v15 = *(v6 + 848);
  *(v6 + 848) = v14;

  v16 = *(&self->_has + 1);
  if ((v16 & 0x2000000000) != 0)
  {
    *(v6 + 804) = self->_contactFamilyName;
    *(v6 + 864) |= 0x2000000000uLL;
    v16 = *(&self->_has + 1);
    if ((v16 & 0x800000000000) == 0)
    {
LABEL_117:
      if ((v16 & 0x800000000) == 0)
      {
        goto LABEL_118;
      }

      goto LABEL_222;
    }
  }

  else if ((v16 & 0x800000000000) == 0)
  {
    goto LABEL_117;
  }

  *(v6 + 844) = self->_contactParent;
  *(v6 + 864) |= 0x800000000000uLL;
  v16 = *(&self->_has + 1);
  if ((v16 & 0x800000000) == 0)
  {
LABEL_118:
    if ((v16 & 0x1000000000) == 0)
    {
      goto LABEL_119;
    }

    goto LABEL_223;
  }

LABEL_222:
  *(v6 + 796) = self->_contactEmergency;
  *(v6 + 864) |= 0x800000000uLL;
  v16 = *(&self->_has + 1);
  if ((v16 & 0x1000000000) == 0)
  {
LABEL_119:
    if ((v16 & 0x200000000000) == 0)
    {
      goto LABEL_120;
    }

    goto LABEL_224;
  }

LABEL_223:
  *(v6 + 800) = self->_contactEmergencyFamily;
  *(v6 + 864) |= 0x1000000000uLL;
  v16 = *(&self->_has + 1);
  if ((v16 & 0x200000000000) == 0)
  {
LABEL_120:
    if ((v16 & 0x400000000000) == 0)
    {
      goto LABEL_121;
    }

    goto LABEL_225;
  }

LABEL_224:
  *(v6 + 836) = self->_contactInHome;
  *(v6 + 864) |= 0x200000000000uLL;
  v16 = *(&self->_has + 1);
  if ((v16 & 0x400000000000) == 0)
  {
LABEL_121:
    if ((v16 & 0x10000000000) == 0)
    {
      goto LABEL_122;
    }

    goto LABEL_226;
  }

LABEL_225:
  *(v6 + 840) = self->_contactInPhotos;
  *(v6 + 864) |= 0x400000000000uLL;
  v16 = *(&self->_has + 1);
  if ((v16 & 0x10000000000) == 0)
  {
LABEL_122:
    if ((v16 & 0x20000000000) == 0)
    {
      goto LABEL_123;
    }

    goto LABEL_227;
  }

LABEL_226:
  *(v6 + 816) = self->_contactInAirDrop;
  *(v6 + 864) |= 0x10000000000uLL;
  v16 = *(&self->_has + 1);
  if ((v16 & 0x20000000000) == 0)
  {
LABEL_123:
    if ((v16 & 0x80000000000) == 0)
    {
      goto LABEL_124;
    }

    goto LABEL_228;
  }

LABEL_227:
  *(v6 + 820) = self->_contactInAirDropAtHome;
  *(v6 + 864) |= 0x20000000000uLL;
  v16 = *(&self->_has + 1);
  if ((v16 & 0x80000000000) == 0)
  {
LABEL_124:
    if ((v16 & 0x100000000000) == 0)
    {
      goto LABEL_125;
    }

LABEL_229:
    *(v6 + 832) = self->_contactInFMFSharingWithMe;
    *(v6 + 864) |= 0x100000000000uLL;
    if ((*(&self->_has + 1) & 0x40000000000) == 0)
    {
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_228:
  *(v6 + 828) = self->_contactInFMFFollowingMe;
  *(v6 + 864) |= 0x80000000000uLL;
  v16 = *(&self->_has + 1);
  if ((v16 & 0x100000000000) != 0)
  {
    goto LABEL_229;
  }

LABEL_125:
  if ((v16 & 0x40000000000) != 0)
  {
LABEL_126:
    *(v6 + 824) = self->_contactInFMFFavorite;
    *(v6 + 864) |= 0x40000000000uLL;
  }

LABEL_127:
  v17 = v6;

  return v17;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_564;
  }

  p_has = &self->_has;
  v6 = *(&self->_has + 1);
  v7 = *(equalCopy + 108);
  if ((v6 & 0x2000) != 0)
  {
    if ((v7 & 0x2000) == 0 || self->_firstPartyMsgTotal != *(equalCopy + 78))
    {
      goto LABEL_564;
    }
  }

  else if ((v7 & 0x2000) != 0)
  {
    goto LABEL_564;
  }

  v8 = *p_has;
  v9 = *(equalCopy + 107);
  if ((*p_has & 0x400000000000000) != 0)
  {
    if ((v9 & 0x400000000000000) == 0 || self->_firstPartyMsgDayRatio != *(equalCopy + 59))
    {
      goto LABEL_564;
    }
  }

  else if ((v9 & 0x400000000000000) != 0)
  {
    goto LABEL_564;
  }

  if ((v6 & 0x800) != 0)
  {
    if ((v7 & 0x800) == 0 || self->_firstPartyMsgOutgoingRatio != *(equalCopy + 76))
    {
      goto LABEL_564;
    }
  }

  else if ((v7 & 0x800) != 0)
  {
    goto LABEL_564;
  }

  if ((v6 & 4) != 0)
  {
    if ((v7 & 4) == 0 || self->_firstPartyMsgMorningWeekday != *(equalCopy + 67))
    {
      goto LABEL_564;
    }
  }

  else if ((v7 & 4) != 0)
  {
    goto LABEL_564;
  }

  if (v8 < 0)
  {
    if ((v9 & 0x8000000000000000) == 0 || self->_firstPartyMsgMorningFri != *(equalCopy + 64))
    {
      goto LABEL_564;
    }
  }

  else if (v9 < 0)
  {
    goto LABEL_564;
  }

  if (v6)
  {
    if ((v7 & 1) == 0 || self->_firstPartyMsgMorningSat != *(equalCopy + 65))
    {
      goto LABEL_564;
    }
  }

  else if (v7)
  {
    goto LABEL_564;
  }

  if ((v6 & 2) != 0)
  {
    if ((v7 & 2) == 0 || self->_firstPartyMsgMorningSun != *(equalCopy + 66))
    {
      goto LABEL_564;
    }
  }

  else if ((v7 & 2) != 0)
  {
    goto LABEL_564;
  }

  if ((v6 & 0x400) != 0)
  {
    if ((v7 & 0x400) == 0 || self->_firstPartyMsgNoonWeekday != *(equalCopy + 75))
    {
      goto LABEL_564;
    }
  }

  else if ((v7 & 0x400) != 0)
  {
    goto LABEL_564;
  }

  if ((v6 & 0x80) != 0)
  {
    if ((v7 & 0x80) == 0 || self->_firstPartyMsgNoonFri != *(equalCopy + 72))
    {
      goto LABEL_564;
    }
  }

  else if ((v7 & 0x80) != 0)
  {
    goto LABEL_564;
  }

  if ((v6 & 0x100) != 0)
  {
    if ((v7 & 0x100) == 0 || self->_firstPartyMsgNoonSat != *(equalCopy + 73))
    {
      goto LABEL_564;
    }
  }

  else if ((v7 & 0x100) != 0)
  {
    goto LABEL_564;
  }

  if ((v6 & 0x200) != 0)
  {
    if ((v7 & 0x200) == 0 || self->_firstPartyMsgNoonSun != *(equalCopy + 74))
    {
      goto LABEL_564;
    }
  }

  else if ((v7 & 0x200) != 0)
  {
    goto LABEL_564;
  }

  if ((v8 & 0x4000000000000000) != 0)
  {
    if ((v9 & 0x4000000000000000) == 0 || self->_firstPartyMsgEveWeekday != *(equalCopy + 63))
    {
      goto LABEL_564;
    }
  }

  else if ((v9 & 0x4000000000000000) != 0)
  {
    goto LABEL_564;
  }

  if ((v8 & 0x800000000000000) != 0)
  {
    if ((v9 & 0x800000000000000) == 0 || self->_firstPartyMsgEveFri != *(equalCopy + 60))
    {
      goto LABEL_564;
    }
  }

  else if ((v9 & 0x800000000000000) != 0)
  {
    goto LABEL_564;
  }

  if ((v8 & 0x1000000000000000) != 0)
  {
    if ((v9 & 0x1000000000000000) == 0 || self->_firstPartyMsgEveSat != *(equalCopy + 61))
    {
      goto LABEL_564;
    }
  }

  else if ((v9 & 0x1000000000000000) != 0)
  {
    goto LABEL_564;
  }

  if ((v8 & 0x2000000000000000) != 0)
  {
    if ((v9 & 0x2000000000000000) == 0 || self->_firstPartyMsgEveSun != *(equalCopy + 62))
    {
      goto LABEL_564;
    }
  }

  else if ((v9 & 0x2000000000000000) != 0)
  {
    goto LABEL_564;
  }

  if ((v6 & 0x40) != 0)
  {
    if ((v7 & 0x40) == 0 || self->_firstPartyMsgNightWeekday != *(equalCopy + 71))
    {
      goto LABEL_564;
    }
  }

  else if ((v7 & 0x40) != 0)
  {
    goto LABEL_564;
  }

  if ((v6 & 8) != 0)
  {
    if ((v7 & 8) == 0 || self->_firstPartyMsgNightFri != *(equalCopy + 68))
    {
      goto LABEL_564;
    }
  }

  else if ((v7 & 8) != 0)
  {
    goto LABEL_564;
  }

  if ((v6 & 0x10) != 0)
  {
    if ((v7 & 0x10) == 0 || self->_firstPartyMsgNightSat != *(equalCopy + 69))
    {
      goto LABEL_564;
    }
  }

  else if ((v7 & 0x10) != 0)
  {
    goto LABEL_564;
  }

  if ((v6 & 0x20) != 0)
  {
    if ((v7 & 0x20) == 0 || self->_firstPartyMsgNightSun != *(equalCopy + 70))
    {
      goto LABEL_564;
    }
  }

  else if ((v7 & 0x20) != 0)
  {
    goto LABEL_564;
  }

  if ((v6 & 0x4000) != 0)
  {
    if ((v7 & 0x4000) == 0 || self->_firstPartyMsgTwoWeeks != *(equalCopy + 79))
    {
      goto LABEL_564;
    }
  }

  else if ((v7 & 0x4000) != 0)
  {
    goto LABEL_564;
  }

  if ((v6 & 0x1000) != 0)
  {
    if ((v7 & 0x1000) == 0 || self->_firstPartyMsgSixWeeks != *(equalCopy + 77))
    {
      goto LABEL_564;
    }
  }

  else if ((v7 & 0x1000) != 0)
  {
    goto LABEL_564;
  }

  if ((v6 & 0x100000000) != 0)
  {
    if ((v7 & 0x100000000) == 0 || self->_thirdPartyMsgTotal != *(equalCopy + 97))
    {
      goto LABEL_564;
    }
  }

  else if ((v7 & 0x100000000) != 0)
  {
    goto LABEL_564;
  }

  if ((v6 & 0x8000) != 0)
  {
    if ((v7 & 0x8000) == 0 || self->_thirdPartyMsgDayRatio != *(equalCopy + 80))
    {
      goto LABEL_564;
    }
  }

  else if ((v7 & 0x8000) != 0)
  {
    goto LABEL_564;
  }

  if ((v6 & 0x800000) != 0)
  {
    if ((v7 & 0x800000) == 0 || self->_thirdPartyMsgMorningWeekday != *(equalCopy + 88))
    {
      goto LABEL_564;
    }
  }

  else if ((v7 & 0x800000) != 0)
  {
    goto LABEL_564;
  }

  if ((v6 & 0x100000) != 0)
  {
    if ((v7 & 0x100000) == 0 || self->_thirdPartyMsgMorningFri != *(equalCopy + 85))
    {
      goto LABEL_564;
    }
  }

  else if ((v7 & 0x100000) != 0)
  {
    goto LABEL_564;
  }

  if ((v6 & 0x200000) != 0)
  {
    if ((v7 & 0x200000) == 0 || self->_thirdPartyMsgMorningSat != *(equalCopy + 86))
    {
      goto LABEL_564;
    }
  }

  else if ((v7 & 0x200000) != 0)
  {
    goto LABEL_564;
  }

  if ((v6 & 0x400000) != 0)
  {
    if ((v7 & 0x400000) == 0 || self->_thirdPartyMsgMorningSun != *(equalCopy + 87))
    {
      goto LABEL_564;
    }
  }

  else if ((v7 & 0x400000) != 0)
  {
    goto LABEL_564;
  }

  if ((v6 & 0x80000000) != 0)
  {
    if ((v7 & 0x80000000) == 0 || self->_thirdPartyMsgNoonWeekday != *(equalCopy + 96))
    {
      goto LABEL_564;
    }
  }

  else if ((v7 & 0x80000000) != 0)
  {
    goto LABEL_564;
  }

  if ((v6 & 0x10000000) != 0)
  {
    if ((v7 & 0x10000000) == 0 || self->_thirdPartyMsgNoonFri != *(equalCopy + 93))
    {
      goto LABEL_564;
    }
  }

  else if ((v7 & 0x10000000) != 0)
  {
    goto LABEL_564;
  }

  if ((v6 & 0x20000000) != 0)
  {
    if ((v7 & 0x20000000) == 0 || self->_thirdPartyMsgNoonSat != *(equalCopy + 94))
    {
      goto LABEL_564;
    }
  }

  else if ((v7 & 0x20000000) != 0)
  {
    goto LABEL_564;
  }

  if ((v6 & 0x40000000) != 0)
  {
    if ((v7 & 0x40000000) == 0 || self->_thirdPartyMsgNoonSun != *(equalCopy + 95))
    {
      goto LABEL_564;
    }
  }

  else if ((v7 & 0x40000000) != 0)
  {
    goto LABEL_564;
  }

  if ((v6 & 0x80000) != 0)
  {
    if ((v7 & 0x80000) == 0 || self->_thirdPartyMsgEveWeekday != *(equalCopy + 84))
    {
      goto LABEL_564;
    }
  }

  else if ((v7 & 0x80000) != 0)
  {
    goto LABEL_564;
  }

  if ((v6 & 0x10000) != 0)
  {
    if ((v7 & 0x10000) == 0 || self->_thirdPartyMsgEveFri != *(equalCopy + 81))
    {
      goto LABEL_564;
    }
  }

  else if ((v7 & 0x10000) != 0)
  {
    goto LABEL_564;
  }

  if ((v6 & 0x20000) != 0)
  {
    if ((v7 & 0x20000) == 0 || self->_thirdPartyMsgEveSat != *(equalCopy + 82))
    {
      goto LABEL_564;
    }
  }

  else if ((v7 & 0x20000) != 0)
  {
    goto LABEL_564;
  }

  if ((v6 & 0x40000) != 0)
  {
    if ((v7 & 0x40000) == 0 || self->_thirdPartyMsgEveSun != *(equalCopy + 83))
    {
      goto LABEL_564;
    }
  }

  else if ((v7 & 0x40000) != 0)
  {
    goto LABEL_564;
  }

  if ((v6 & 0x8000000) != 0)
  {
    if ((v7 & 0x8000000) == 0 || self->_thirdPartyMsgNightWeekday != *(equalCopy + 92))
    {
      goto LABEL_564;
    }
  }

  else if ((v7 & 0x8000000) != 0)
  {
    goto LABEL_564;
  }

  if ((v6 & 0x1000000) != 0)
  {
    if ((v7 & 0x1000000) == 0 || self->_thirdPartyMsgNightFri != *(equalCopy + 89))
    {
      goto LABEL_564;
    }
  }

  else if ((v7 & 0x1000000) != 0)
  {
    goto LABEL_564;
  }

  if ((v6 & 0x2000000) != 0)
  {
    if ((v7 & 0x2000000) == 0 || self->_thirdPartyMsgNightSat != *(equalCopy + 90))
    {
      goto LABEL_564;
    }
  }

  else if ((v7 & 0x2000000) != 0)
  {
    goto LABEL_564;
  }

  if ((v6 & 0x4000000) != 0)
  {
    if ((v7 & 0x4000000) == 0 || self->_thirdPartyMsgNightSun != *(equalCopy + 91))
    {
      goto LABEL_564;
    }
  }

  else if ((v7 & 0x4000000) != 0)
  {
    goto LABEL_564;
  }

  if ((v6 & 0x200000000) != 0)
  {
    if ((v7 & 0x200000000) == 0 || self->_thirdPartyMsgTwoWeeks != *(equalCopy + 98))
    {
      goto LABEL_564;
    }
  }

  else if ((v7 & 0x200000000) != 0)
  {
    goto LABEL_564;
  }

  if ((v8 & 0x40000000000000) != 0)
  {
    if ((v9 & 0x40000000000000) == 0 || self->_callTotal != *(equalCopy + 55))
    {
      goto LABEL_564;
    }
  }

  else if ((v9 & 0x40000000000000) != 0)
  {
    goto LABEL_564;
  }

  if ((v6 & 0x400000000) != 0)
  {
    if ((v7 & 0x400000000) == 0 || self->_callBirthday != *(equalCopy + 198))
    {
      goto LABEL_564;
    }
  }

  else if ((v7 & 0x400000000) != 0)
  {
    goto LABEL_564;
  }

  if ((v6 & 0x8000000000) != 0)
  {
    if ((v7 & 0x8000000000) == 0 || self->_contactFavorite != *(equalCopy + 203))
    {
      goto LABEL_564;
    }
  }

  else if ((v7 & 0x8000000000) != 0)
  {
    goto LABEL_564;
  }

  if ((v8 & 0x80000000000000) != 0)
  {
    if ((v9 & 0x80000000000000) == 0 || self->_callTotalDur != *(equalCopy + 56))
    {
      goto LABEL_564;
    }
  }

  else if ((v9 & 0x80000000000000) != 0)
  {
    goto LABEL_564;
  }

  if ((v8 & 2) != 0)
  {
    if ((v9 & 2) == 0 || self->_callDayRatio != *(equalCopy + 2))
    {
      goto LABEL_564;
    }
  }

  else if ((v9 & 2) != 0)
  {
    goto LABEL_564;
  }

  if ((v8 & 0x4000000000) != 0)
  {
    if ((v9 & 0x4000000000) == 0 || self->_callLongRatio != *(equalCopy + 39))
    {
      goto LABEL_564;
    }
  }

  else if ((v9 & 0x4000000000) != 0)
  {
    goto LABEL_564;
  }

  if ((v8 & 0x10000000000000) != 0)
  {
    if ((v9 & 0x10000000000000) == 0 || self->_callOutgoingRatio != *(equalCopy + 53))
    {
      goto LABEL_564;
    }
  }

  else if ((v9 & 0x10000000000000) != 0)
  {
    goto LABEL_564;
  }

  if (v8)
  {
    if ((v9 & 1) == 0 || self->_callAvgDur != *(equalCopy + 1))
    {
      goto LABEL_564;
    }
  }

  else if (v9)
  {
    goto LABEL_564;
  }

  if ((v8 & 0x8000000000) != 0)
  {
    if ((v9 & 0x8000000000) == 0 || self->_callMaxDur != *(equalCopy + 40))
    {
      goto LABEL_564;
    }
  }

  else if ((v9 & 0x8000000000) != 0)
  {
    goto LABEL_564;
  }

  if ((v8 & 0x80000000000) != 0)
  {
    if ((v9 & 0x80000000000) == 0 || self->_callMorningWeekday != *(equalCopy + 44))
    {
      goto LABEL_564;
    }
  }

  else if ((v9 & 0x80000000000) != 0)
  {
    goto LABEL_564;
  }

  if ((v8 & 0x10000000000) != 0)
  {
    if ((v9 & 0x10000000000) == 0 || self->_callMorningFri != *(equalCopy + 41))
    {
      goto LABEL_564;
    }
  }

  else if ((v9 & 0x10000000000) != 0)
  {
    goto LABEL_564;
  }

  if ((v8 & 0x20000000000) != 0)
  {
    if ((v9 & 0x20000000000) == 0 || self->_callMorningSat != *(equalCopy + 42))
    {
      goto LABEL_564;
    }
  }

  else if ((v9 & 0x20000000000) != 0)
  {
    goto LABEL_564;
  }

  v10 = *(equalCopy + 107);
  if ((v8 & 0x40000000000) != 0)
  {
    if ((v10 & 0x40000000000) == 0 || self->_callMorningSun != *(equalCopy + 43))
    {
      goto LABEL_564;
    }
  }

  else if ((v10 & 0x40000000000) != 0)
  {
    goto LABEL_564;
  }

  if ((v8 & 0x8000000000000) != 0)
  {
    if ((v10 & 0x8000000000000) == 0 || self->_callNoonWeekday != *(equalCopy + 52))
    {
      goto LABEL_564;
    }
  }

  else if ((v10 & 0x8000000000000) != 0)
  {
    goto LABEL_564;
  }

  if ((v8 & 0x1000000000000) != 0)
  {
    if ((v10 & 0x1000000000000) == 0 || self->_callNoonFri != *(equalCopy + 49))
    {
      goto LABEL_564;
    }
  }

  else if ((v10 & 0x1000000000000) != 0)
  {
    goto LABEL_564;
  }

  if ((v8 & 0x2000000000000) != 0)
  {
    if ((v10 & 0x2000000000000) == 0 || self->_callNoonSat != *(equalCopy + 50))
    {
      goto LABEL_564;
    }
  }

  else if ((v10 & 0x2000000000000) != 0)
  {
    goto LABEL_564;
  }

  if ((v8 & 0x4000000000000) != 0)
  {
    if ((v10 & 0x4000000000000) == 0 || self->_callNoonSun != *(equalCopy + 51))
    {
      goto LABEL_564;
    }
  }

  else if ((v10 & 0x4000000000000) != 0)
  {
    goto LABEL_564;
  }

  if ((v8 & 0x200000) != 0)
  {
    if ((v10 & 0x200000) == 0 || self->_callEveWeekday != *(equalCopy + 22))
    {
      goto LABEL_564;
    }
  }

  else if ((v10 & 0x200000) != 0)
  {
    goto LABEL_564;
  }

  if ((v8 & 0x40000) != 0)
  {
    if ((v10 & 0x40000) == 0 || self->_callEveFri != *(equalCopy + 19))
    {
      goto LABEL_564;
    }
  }

  else if ((v10 & 0x40000) != 0)
  {
    goto LABEL_564;
  }

  if ((v8 & 0x80000) != 0)
  {
    if ((v10 & 0x80000) == 0 || self->_callEveSat != *(equalCopy + 20))
    {
      goto LABEL_564;
    }
  }

  else if ((v10 & 0x80000) != 0)
  {
    goto LABEL_564;
  }

  if ((v8 & 0x100000) != 0)
  {
    if ((v10 & 0x100000) == 0 || self->_callEveSun != *(equalCopy + 21))
    {
      goto LABEL_564;
    }
  }

  else if ((v10 & 0x100000) != 0)
  {
    goto LABEL_564;
  }

  if ((v8 & 0x800000000000) != 0)
  {
    if ((v10 & 0x800000000000) == 0 || self->_callNightWeekday != *(equalCopy + 48))
    {
      goto LABEL_564;
    }
  }

  else if ((v10 & 0x800000000000) != 0)
  {
    goto LABEL_564;
  }

  if ((v8 & 0x100000000000) != 0)
  {
    if ((v10 & 0x100000000000) == 0 || self->_callNightFri != *(equalCopy + 45))
    {
      goto LABEL_564;
    }
  }

  else if ((v10 & 0x100000000000) != 0)
  {
    goto LABEL_564;
  }

  if ((v8 & 0x200000000000) != 0)
  {
    if ((v10 & 0x200000000000) == 0 || self->_callNightSat != *(equalCopy + 46))
    {
      goto LABEL_564;
    }
  }

  else if ((v10 & 0x200000000000) != 0)
  {
    goto LABEL_564;
  }

  if ((v8 & 0x400000000000) != 0)
  {
    if ((v10 & 0x400000000000) == 0 || self->_callNightSun != *(equalCopy + 47))
    {
      goto LABEL_564;
    }
  }

  else if ((v10 & 0x400000000000) != 0)
  {
    goto LABEL_564;
  }

  if ((v8 & 0x200) != 0)
  {
    if ((v10 & 0x200) == 0 || self->_callDurMorningWeekday != *(equalCopy + 10))
    {
      goto LABEL_564;
    }
  }

  else if ((v10 & 0x200) != 0)
  {
    goto LABEL_564;
  }

  if ((v8 & 0x40) != 0)
  {
    if ((v10 & 0x40) == 0 || self->_callDurMorningFri != *(equalCopy + 7))
    {
      goto LABEL_564;
    }
  }

  else if ((v10 & 0x40) != 0)
  {
    goto LABEL_564;
  }

  if ((v8 & 0x80) != 0)
  {
    if ((v10 & 0x80) == 0 || self->_callDurMorningSat != *(equalCopy + 8))
    {
      goto LABEL_564;
    }
  }

  else if ((v10 & 0x80) != 0)
  {
    goto LABEL_564;
  }

  if ((v8 & 0x100) != 0)
  {
    if ((v10 & 0x100) == 0 || self->_callDurMorningSun != *(equalCopy + 9))
    {
      goto LABEL_564;
    }
  }

  else if ((v10 & 0x100) != 0)
  {
    goto LABEL_564;
  }

  if ((v8 & 0x20000) != 0)
  {
    if ((v10 & 0x20000) == 0 || self->_callDurNoonWeekday != *(equalCopy + 18))
    {
      goto LABEL_564;
    }
  }

  else if ((v10 & 0x20000) != 0)
  {
    goto LABEL_564;
  }

  if ((v8 & 0x4000) != 0)
  {
    if ((v10 & 0x4000) == 0 || self->_callDurNoonFri != *(equalCopy + 15))
    {
      goto LABEL_564;
    }
  }

  else if ((v10 & 0x4000) != 0)
  {
    goto LABEL_564;
  }

  if ((v8 & 0x8000) != 0)
  {
    if ((v10 & 0x8000) == 0 || self->_callDurNoonSat != *(equalCopy + 16))
    {
      goto LABEL_564;
    }
  }

  else if ((v10 & 0x8000) != 0)
  {
    goto LABEL_564;
  }

  if ((v8 & 0x10000) != 0)
  {
    if ((v10 & 0x10000) == 0 || self->_callDurNoonSun != *(equalCopy + 17))
    {
      goto LABEL_564;
    }
  }

  else if ((v10 & 0x10000) != 0)
  {
    goto LABEL_564;
  }

  if ((v8 & 0x20) != 0)
  {
    if ((v10 & 0x20) == 0 || self->_callDurEveWeekday != *(equalCopy + 6))
    {
      goto LABEL_564;
    }
  }

  else if ((v10 & 0x20) != 0)
  {
    goto LABEL_564;
  }

  if ((v8 & 4) != 0)
  {
    if ((v10 & 4) == 0 || self->_callDurEveFri != *(equalCopy + 3))
    {
      goto LABEL_564;
    }
  }

  else if ((v10 & 4) != 0)
  {
    goto LABEL_564;
  }

  if ((v8 & 8) != 0)
  {
    if ((v10 & 8) == 0 || self->_callDurEveSat != *(equalCopy + 4))
    {
      goto LABEL_564;
    }
  }

  else if ((v10 & 8) != 0)
  {
    goto LABEL_564;
  }

  if ((v8 & 0x10) != 0)
  {
    if ((v10 & 0x10) == 0 || self->_callDurEveSun != *(equalCopy + 5))
    {
      goto LABEL_564;
    }
  }

  else if ((v10 & 0x10) != 0)
  {
    goto LABEL_564;
  }

  if ((v8 & 0x2000) != 0)
  {
    if ((v10 & 0x2000) == 0 || self->_callDurNightWeekday != *(equalCopy + 14))
    {
      goto LABEL_564;
    }
  }

  else if ((v10 & 0x2000) != 0)
  {
    goto LABEL_564;
  }

  if ((v8 & 0x400) != 0)
  {
    if ((v10 & 0x400) == 0 || self->_callDurNightFri != *(equalCopy + 11))
    {
      goto LABEL_564;
    }
  }

  else if ((v10 & 0x400) != 0)
  {
    goto LABEL_564;
  }

  if ((v8 & 0x800) != 0)
  {
    if ((v10 & 0x800) == 0 || self->_callDurNightSat != *(equalCopy + 12))
    {
      goto LABEL_564;
    }
  }

  else if ((v10 & 0x800) != 0)
  {
    goto LABEL_564;
  }

  if ((v8 & 0x1000) != 0)
  {
    if ((v10 & 0x1000) == 0 || self->_callDurNightSun != *(equalCopy + 13))
    {
      goto LABEL_564;
    }
  }

  else if ((v10 & 0x1000) != 0)
  {
    goto LABEL_564;
  }

  if ((v8 & 0x20000000) != 0)
  {
    if ((v10 & 0x20000000) == 0 || self->_callLongMorningWeekday != *(equalCopy + 30))
    {
      goto LABEL_564;
    }
  }

  else if ((v10 & 0x20000000) != 0)
  {
    goto LABEL_564;
  }

  if ((v8 & 0x4000000) != 0)
  {
    if ((v10 & 0x4000000) == 0 || self->_callLongMorningFri != *(equalCopy + 27))
    {
      goto LABEL_564;
    }
  }

  else if ((v10 & 0x4000000) != 0)
  {
    goto LABEL_564;
  }

  if ((v8 & 0x8000000) != 0)
  {
    if ((v10 & 0x8000000) == 0 || self->_callLongMorningSat != *(equalCopy + 28))
    {
      goto LABEL_564;
    }
  }

  else if ((v10 & 0x8000000) != 0)
  {
    goto LABEL_564;
  }

  if ((v8 & 0x10000000) != 0)
  {
    if ((v10 & 0x10000000) == 0 || self->_callLongMorningSun != *(equalCopy + 29))
    {
      goto LABEL_564;
    }
  }

  else if ((v10 & 0x10000000) != 0)
  {
    goto LABEL_564;
  }

  if ((v8 & 0x2000000000) != 0)
  {
    if ((v10 & 0x2000000000) == 0 || self->_callLongNoonWeekday != *(equalCopy + 38))
    {
      goto LABEL_564;
    }
  }

  else if ((v10 & 0x2000000000) != 0)
  {
    goto LABEL_564;
  }

  if ((v8 & 0x400000000) != 0)
  {
    if ((v10 & 0x400000000) == 0 || self->_callLongNoonFri != *(equalCopy + 35))
    {
      goto LABEL_564;
    }
  }

  else if ((v10 & 0x400000000) != 0)
  {
    goto LABEL_564;
  }

  if ((v8 & 0x800000000) != 0)
  {
    if ((v10 & 0x800000000) == 0 || self->_callLongNoonSat != *(equalCopy + 36))
    {
      goto LABEL_564;
    }
  }

  else if ((v10 & 0x800000000) != 0)
  {
    goto LABEL_564;
  }

  if ((v8 & 0x1000000000) != 0)
  {
    if ((v10 & 0x1000000000) == 0 || self->_callLongNoonSun != *(equalCopy + 37))
    {
      goto LABEL_564;
    }
  }

  else if ((v10 & 0x1000000000) != 0)
  {
    goto LABEL_564;
  }

  if ((v8 & 0x2000000) != 0)
  {
    if ((v10 & 0x2000000) == 0 || self->_callLongEveWeekday != *(equalCopy + 26))
    {
      goto LABEL_564;
    }
  }

  else if ((v10 & 0x2000000) != 0)
  {
    goto LABEL_564;
  }

  if ((v8 & 0x400000) != 0)
  {
    if ((v10 & 0x400000) == 0 || self->_callLongEveFri != *(equalCopy + 23))
    {
      goto LABEL_564;
    }
  }

  else if ((v10 & 0x400000) != 0)
  {
    goto LABEL_564;
  }

  if ((v8 & 0x800000) != 0)
  {
    if ((v10 & 0x800000) == 0 || self->_callLongEveSat != *(equalCopy + 24))
    {
      goto LABEL_564;
    }
  }

  else if ((v10 & 0x800000) != 0)
  {
    goto LABEL_564;
  }

  if ((v8 & 0x1000000) != 0)
  {
    if ((v10 & 0x1000000) == 0 || self->_callLongEveSun != *(equalCopy + 25))
    {
      goto LABEL_564;
    }
  }

  else if ((v10 & 0x1000000) != 0)
  {
    goto LABEL_564;
  }

  if ((v8 & 0x200000000) != 0)
  {
    if ((v10 & 0x200000000) == 0 || self->_callLongNightWeekday != *(equalCopy + 34))
    {
      goto LABEL_564;
    }
  }

  else if ((v10 & 0x200000000) != 0)
  {
    goto LABEL_564;
  }

  if ((v8 & 0x40000000) != 0)
  {
    if ((v10 & 0x40000000) == 0 || self->_callLongNightFri != *(equalCopy + 31))
    {
      goto LABEL_564;
    }
  }

  else if ((v10 & 0x40000000) != 0)
  {
    goto LABEL_564;
  }

  if ((v8 & 0x80000000) != 0)
  {
    if ((v10 & 0x80000000) == 0 || self->_callLongNightSat != *(equalCopy + 32))
    {
      goto LABEL_564;
    }
  }

  else if ((v10 & 0x80000000) != 0)
  {
    goto LABEL_564;
  }

  if ((v8 & 0x100000000) != 0)
  {
    if ((v10 & 0x100000000) == 0 || self->_callLongNightSun != *(equalCopy + 33))
    {
      goto LABEL_564;
    }
  }

  else if ((v10 & 0x100000000) != 0)
  {
    goto LABEL_564;
  }

  if ((v8 & 0x200000000000000) != 0)
  {
    if ((v10 & 0x200000000000000) == 0 || self->_callTwoWeeks != *(equalCopy + 58))
    {
      goto LABEL_564;
    }
  }

  else if ((v10 & 0x200000000000000) != 0)
  {
    goto LABEL_564;
  }

  if ((v8 & 0x20000000000000) != 0)
  {
    if ((v10 & 0x20000000000000) == 0 || self->_callSixWeeks != *(equalCopy + 54))
    {
      goto LABEL_564;
    }
  }

  else if ((v10 & 0x20000000000000) != 0)
  {
    goto LABEL_564;
  }

  if ((v8 & 0x100000000000000) != 0)
  {
    if ((v10 & 0x100000000000000) == 0 || self->_callTwelveWeeks != *(equalCopy + 57))
    {
      goto LABEL_564;
    }
  }

  else if ((v10 & 0x100000000000000) != 0)
  {
    goto LABEL_564;
  }

  v11 = *(equalCopy + 108);
  if ((v6 & 0x4000000000) != 0)
  {
    if ((v11 & 0x4000000000) == 0 || self->_contactFamilyRelation != *(equalCopy + 202))
    {
      goto LABEL_564;
    }
  }

  else if ((v11 & 0x4000000000) != 0)
  {
    goto LABEL_564;
  }

  contactRelation = self->_contactRelation;
  if (contactRelation | *(equalCopy + 106) && ![(NSString *)contactRelation isEqual:?])
  {
    goto LABEL_564;
  }

  v13 = *(&self->_has + 1);
  v14 = *(equalCopy + 108);
  if ((v13 & 0x2000000000) != 0)
  {
    if ((v14 & 0x2000000000) == 0 || self->_contactFamilyName != *(equalCopy + 201))
    {
      goto LABEL_564;
    }
  }

  else if ((v14 & 0x2000000000) != 0)
  {
    goto LABEL_564;
  }

  if ((v13 & 0x800000000000) != 0)
  {
    if ((v14 & 0x800000000000) == 0 || self->_contactParent != *(equalCopy + 211))
    {
      goto LABEL_564;
    }
  }

  else if ((v14 & 0x800000000000) != 0)
  {
    goto LABEL_564;
  }

  if ((v13 & 0x800000000) != 0)
  {
    if ((v14 & 0x800000000) == 0 || self->_contactEmergency != *(equalCopy + 199))
    {
      goto LABEL_564;
    }
  }

  else if ((v14 & 0x800000000) != 0)
  {
    goto LABEL_564;
  }

  if ((v13 & 0x1000000000) != 0)
  {
    if ((v14 & 0x1000000000) == 0 || self->_contactEmergencyFamily != *(equalCopy + 200))
    {
      goto LABEL_564;
    }
  }

  else if ((v14 & 0x1000000000) != 0)
  {
    goto LABEL_564;
  }

  if ((v13 & 0x200000000000) != 0)
  {
    if ((v14 & 0x200000000000) == 0 || self->_contactInHome != *(equalCopy + 209))
    {
      goto LABEL_564;
    }
  }

  else if ((v14 & 0x200000000000) != 0)
  {
    goto LABEL_564;
  }

  if ((v13 & 0x400000000000) != 0)
  {
    if ((v14 & 0x400000000000) == 0 || self->_contactInPhotos != *(equalCopy + 210))
    {
      goto LABEL_564;
    }
  }

  else if ((v14 & 0x400000000000) != 0)
  {
    goto LABEL_564;
  }

  if ((v13 & 0x10000000000) != 0)
  {
    if ((v14 & 0x10000000000) == 0 || self->_contactInAirDrop != *(equalCopy + 204))
    {
      goto LABEL_564;
    }
  }

  else if ((v14 & 0x10000000000) != 0)
  {
    goto LABEL_564;
  }

  if ((v13 & 0x20000000000) != 0)
  {
    if ((v14 & 0x20000000000) == 0 || self->_contactInAirDropAtHome != *(equalCopy + 205))
    {
      goto LABEL_564;
    }
  }

  else if ((v14 & 0x20000000000) != 0)
  {
    goto LABEL_564;
  }

  if ((v13 & 0x80000000000) != 0)
  {
    if ((v14 & 0x80000000000) == 0 || self->_contactInFMFFollowingMe != *(equalCopy + 207))
    {
      goto LABEL_564;
    }
  }

  else if ((v14 & 0x80000000000) != 0)
  {
    goto LABEL_564;
  }

  if ((v13 & 0x100000000000) == 0)
  {
    if ((v14 & 0x100000000000) == 0)
    {
      goto LABEL_559;
    }

LABEL_564:
    v15 = 0;
    goto LABEL_565;
  }

  if ((v14 & 0x100000000000) == 0 || self->_contactInFMFSharingWithMe != *(equalCopy + 208))
  {
    goto LABEL_564;
  }

LABEL_559:
  if ((v13 & 0x40000000000) != 0)
  {
    if ((v14 & 0x40000000000) == 0 || self->_contactInFMFFavorite != *(equalCopy + 206))
    {
      goto LABEL_564;
    }

    v15 = 1;
  }

  else
  {
    v15 = (v14 & 0x40000000000) == 0;
  }

LABEL_565:

  return v15;
}

- (unint64_t)hash
{
  p_has = &self->_has;
  v6 = *(&self->_has + 1);
  if ((v6 & 0x2000) != 0)
  {
    v493 = 2654435761u * self->_firstPartyMsgTotal;
  }

  else
  {
    v493 = 0;
  }

  v492 = &self->_has;
  v7 = *p_has;
  if ((*p_has & 0x400000000000000) != 0)
  {
    firstPartyMsgDayRatio = self->_firstPartyMsgDayRatio;
    if (firstPartyMsgDayRatio < 0.0)
    {
      firstPartyMsgDayRatio = -firstPartyMsgDayRatio;
    }

    *v2.i64 = floor(firstPartyMsgDayRatio + 0.5);
    v10 = (firstPartyMsgDayRatio - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v11.f64[0] = NAN;
    v11.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v11), v3, v2);
    v8 = 2654435761u * *v2.i64;
    if (v10 >= 0.0)
    {
      if (v10 > 0.0)
      {
        v8 += v10;
      }
    }

    else
    {
      v8 -= fabs(v10);
    }
  }

  else
  {
    v8 = 0;
  }

  if ((v6 & 0x800) != 0)
  {
    firstPartyMsgOutgoingRatio = self->_firstPartyMsgOutgoingRatio;
    if (firstPartyMsgOutgoingRatio < 0.0)
    {
      firstPartyMsgOutgoingRatio = -firstPartyMsgOutgoingRatio;
    }

    *v2.i64 = floor(firstPartyMsgOutgoingRatio + 0.5);
    v14 = (firstPartyMsgOutgoingRatio - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v15.f64[0] = NAN;
    v15.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v15), v3, v2);
    v12 = 2654435761u * *v2.i64;
    if (v14 >= 0.0)
    {
      if (v14 > 0.0)
      {
        v12 += v14;
      }
    }

    else
    {
      v12 -= fabs(v14);
    }
  }

  else
  {
    v12 = 0;
  }

  if ((v6 & 4) != 0)
  {
    firstPartyMsgMorningWeekday = self->_firstPartyMsgMorningWeekday;
    if (firstPartyMsgMorningWeekday < 0.0)
    {
      firstPartyMsgMorningWeekday = -firstPartyMsgMorningWeekday;
    }

    *v2.i64 = floor(firstPartyMsgMorningWeekday + 0.5);
    v18 = (firstPartyMsgMorningWeekday - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v19.f64[0] = NAN;
    v19.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v19), v3, v2);
    v16 = 2654435761u * *v2.i64;
    if (v18 >= 0.0)
    {
      if (v18 > 0.0)
      {
        v16 += v18;
      }
    }

    else
    {
      v16 -= fabs(v18);
    }
  }

  else
  {
    v16 = 0;
  }

  if ((v7 & 0x8000000000000000) == 0)
  {
    v498 = 0;
    goto LABEL_37;
  }

  firstPartyMsgMorningFri = self->_firstPartyMsgMorningFri;
  if (firstPartyMsgMorningFri < 0.0)
  {
    firstPartyMsgMorningFri = -firstPartyMsgMorningFri;
  }

  *v2.i64 = floor(firstPartyMsgMorningFri + 0.5);
  v21 = (firstPartyMsgMorningFri - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v22.f64[0] = NAN;
  v22.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v22), v3, v2);
  v498 = 2654435761u * *v2.i64;
  if (v21 >= 0.0)
  {
    if (v21 <= 0.0)
    {
      goto LABEL_37;
    }

    v23 = v498 + v21;
  }

  else
  {
    v23 = v498 - fabs(v21);
  }

  v498 = v23;
LABEL_37:
  if (v6)
  {
    firstPartyMsgMorningSat = self->_firstPartyMsgMorningSat;
    if (firstPartyMsgMorningSat < 0.0)
    {
      firstPartyMsgMorningSat = -firstPartyMsgMorningSat;
    }

    *v2.i64 = floor(firstPartyMsgMorningSat + 0.5);
    v26 = (firstPartyMsgMorningSat - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v27.f64[0] = NAN;
    v27.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v27), v3, v2);
    v24 = 2654435761u * *v2.i64;
    if (v26 >= 0.0)
    {
      if (v26 > 0.0)
      {
        v24 += v26;
      }
    }

    else
    {
      v24 -= fabs(v26);
    }
  }

  else
  {
    v24 = 0;
  }

  if ((v6 & 2) != 0)
  {
    firstPartyMsgMorningSun = self->_firstPartyMsgMorningSun;
    if (firstPartyMsgMorningSun < 0.0)
    {
      firstPartyMsgMorningSun = -firstPartyMsgMorningSun;
    }

    *v2.i64 = floor(firstPartyMsgMorningSun + 0.5);
    v30 = (firstPartyMsgMorningSun - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v31.f64[0] = NAN;
    v31.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v31), v3, v2);
    v28 = 2654435761u * *v2.i64;
    if (v30 >= 0.0)
    {
      if (v30 > 0.0)
      {
        v28 += v30;
      }
    }

    else
    {
      v28 -= fabs(v30);
    }
  }

  else
  {
    v28 = 0;
  }

  if ((v6 & 0x400) != 0)
  {
    firstPartyMsgNoonWeekday = self->_firstPartyMsgNoonWeekday;
    if (firstPartyMsgNoonWeekday < 0.0)
    {
      firstPartyMsgNoonWeekday = -firstPartyMsgNoonWeekday;
    }

    *v2.i64 = floor(firstPartyMsgNoonWeekday + 0.5);
    v34 = (firstPartyMsgNoonWeekday - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v35.f64[0] = NAN;
    v35.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v35), v3, v2);
    v32 = 2654435761u * *v2.i64;
    if (v34 >= 0.0)
    {
      if (v34 > 0.0)
      {
        v32 += v34;
      }
    }

    else
    {
      v32 -= fabs(v34);
    }
  }

  else
  {
    v32 = 0;
  }

  if ((v6 & 0x80) != 0)
  {
    firstPartyMsgNoonFri = self->_firstPartyMsgNoonFri;
    if (firstPartyMsgNoonFri < 0.0)
    {
      firstPartyMsgNoonFri = -firstPartyMsgNoonFri;
    }

    *v2.i64 = floor(firstPartyMsgNoonFri + 0.5);
    v38 = (firstPartyMsgNoonFri - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v39.f64[0] = NAN;
    v39.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v39), v3, v2);
    v36 = 2654435761u * *v2.i64;
    if (v38 >= 0.0)
    {
      if (v38 > 0.0)
      {
        v36 += v38;
      }
    }

    else
    {
      v36 -= fabs(v38);
    }
  }

  else
  {
    v36 = 0;
  }

  if ((v6 & 0x100) != 0)
  {
    firstPartyMsgNoonSat = self->_firstPartyMsgNoonSat;
    if (firstPartyMsgNoonSat < 0.0)
    {
      firstPartyMsgNoonSat = -firstPartyMsgNoonSat;
    }

    *v2.i64 = floor(firstPartyMsgNoonSat + 0.5);
    v42 = (firstPartyMsgNoonSat - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v43.f64[0] = NAN;
    v43.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v43), v3, v2);
    v40 = 2654435761u * *v2.i64;
    if (v42 >= 0.0)
    {
      if (v42 > 0.0)
      {
        v40 += v42;
      }
    }

    else
    {
      v40 -= fabs(v42);
    }
  }

  else
  {
    v40 = 0;
  }

  if ((v6 & 0x200) != 0)
  {
    firstPartyMsgNoonSun = self->_firstPartyMsgNoonSun;
    if (firstPartyMsgNoonSun < 0.0)
    {
      firstPartyMsgNoonSun = -firstPartyMsgNoonSun;
    }

    *v2.i64 = floor(firstPartyMsgNoonSun + 0.5);
    v46 = (firstPartyMsgNoonSun - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v47.f64[0] = NAN;
    v47.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v47), v3, v2);
    v44 = 2654435761u * *v2.i64;
    if (v46 >= 0.0)
    {
      if (v46 > 0.0)
      {
        v44 += v46;
      }
    }

    else
    {
      v44 -= fabs(v46);
    }
  }

  else
  {
    v44 = 0;
  }

  if ((v7 & 0x4000000000000000) != 0)
  {
    firstPartyMsgEveWeekday = self->_firstPartyMsgEveWeekday;
    if (firstPartyMsgEveWeekday < 0.0)
    {
      firstPartyMsgEveWeekday = -firstPartyMsgEveWeekday;
    }

    *v2.i64 = floor(firstPartyMsgEveWeekday + 0.5);
    v50 = (firstPartyMsgEveWeekday - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v51.f64[0] = NAN;
    v51.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v51), v3, v2);
    v48 = 2654435761u * *v2.i64;
    if (v50 >= 0.0)
    {
      if (v50 > 0.0)
      {
        v48 += v50;
      }
    }

    else
    {
      v48 -= fabs(v50);
    }
  }

  else
  {
    v48 = 0;
  }

  if ((v7 & 0x800000000000000) != 0)
  {
    firstPartyMsgEveFri = self->_firstPartyMsgEveFri;
    if (firstPartyMsgEveFri < 0.0)
    {
      firstPartyMsgEveFri = -firstPartyMsgEveFri;
    }

    *v2.i64 = floor(firstPartyMsgEveFri + 0.5);
    v54 = (firstPartyMsgEveFri - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v55.f64[0] = NAN;
    v55.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v55), v3, v2);
    v52 = 2654435761u * *v2.i64;
    if (v54 >= 0.0)
    {
      if (v54 > 0.0)
      {
        v52 += v54;
      }
    }

    else
    {
      v52 -= fabs(v54);
    }
  }

  else
  {
    v52 = 0;
  }

  if ((v7 & 0x1000000000000000) == 0)
  {
    v508 = 0;
    goto LABEL_110;
  }

  firstPartyMsgEveSat = self->_firstPartyMsgEveSat;
  if (firstPartyMsgEveSat < 0.0)
  {
    firstPartyMsgEveSat = -firstPartyMsgEveSat;
  }

  *v2.i64 = floor(firstPartyMsgEveSat + 0.5);
  v57 = (firstPartyMsgEveSat - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v58.f64[0] = NAN;
  v58.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v58), v3, v2);
  v508 = 2654435761u * *v2.i64;
  if (v57 >= 0.0)
  {
    if (v57 <= 0.0)
    {
      goto LABEL_110;
    }

    v59 = v508 + v57;
  }

  else
  {
    v59 = v508 - fabs(v57);
  }

  v508 = v59;
LABEL_110:
  if ((v7 & 0x2000000000000000) == 0)
  {
    v507 = 0;
    goto LABEL_119;
  }

  firstPartyMsgEveSun = self->_firstPartyMsgEveSun;
  if (firstPartyMsgEveSun < 0.0)
  {
    firstPartyMsgEveSun = -firstPartyMsgEveSun;
  }

  *v2.i64 = floor(firstPartyMsgEveSun + 0.5);
  v61 = (firstPartyMsgEveSun - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v62.f64[0] = NAN;
  v62.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v62), v3, v2);
  v507 = 2654435761u * *v2.i64;
  if (v61 >= 0.0)
  {
    if (v61 <= 0.0)
    {
      goto LABEL_119;
    }

    v63 = v507 + v61;
  }

  else
  {
    v63 = v507 - fabs(v61);
  }

  v507 = v63;
LABEL_119:
  if ((v6 & 0x40) == 0)
  {
    v517 = 0;
    goto LABEL_128;
  }

  firstPartyMsgNightWeekday = self->_firstPartyMsgNightWeekday;
  if (firstPartyMsgNightWeekday < 0.0)
  {
    firstPartyMsgNightWeekday = -firstPartyMsgNightWeekday;
  }

  *v2.i64 = floor(firstPartyMsgNightWeekday + 0.5);
  v65 = (firstPartyMsgNightWeekday - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v66.f64[0] = NAN;
  v66.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v66), v3, v2);
  v517 = 2654435761u * *v2.i64;
  if (v65 >= 0.0)
  {
    if (v65 <= 0.0)
    {
      goto LABEL_128;
    }

    v67 = v517 + v65;
  }

  else
  {
    v67 = v517 - fabs(v65);
  }

  v517 = v67;
LABEL_128:
  if ((v6 & 8) == 0)
  {
    v516 = 0;
    goto LABEL_137;
  }

  firstPartyMsgNightFri = self->_firstPartyMsgNightFri;
  if (firstPartyMsgNightFri < 0.0)
  {
    firstPartyMsgNightFri = -firstPartyMsgNightFri;
  }

  *v2.i64 = floor(firstPartyMsgNightFri + 0.5);
  v69 = (firstPartyMsgNightFri - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v70.f64[0] = NAN;
  v70.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v70), v3, v2);
  v516 = 2654435761u * *v2.i64;
  if (v69 >= 0.0)
  {
    if (v69 <= 0.0)
    {
      goto LABEL_137;
    }

    v71 = v516 + v69;
  }

  else
  {
    v71 = v516 - fabs(v69);
  }

  v516 = v71;
LABEL_137:
  v480 = v52;
  if ((v6 & 0x10) == 0)
  {
    v515 = 0;
    goto LABEL_146;
  }

  firstPartyMsgNightSat = self->_firstPartyMsgNightSat;
  if (firstPartyMsgNightSat < 0.0)
  {
    firstPartyMsgNightSat = -firstPartyMsgNightSat;
  }

  *v2.i64 = floor(firstPartyMsgNightSat + 0.5);
  v73 = (firstPartyMsgNightSat - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v74.f64[0] = NAN;
  v74.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v74), v3, v2);
  v515 = 2654435761u * *v2.i64;
  if (v73 >= 0.0)
  {
    if (v73 <= 0.0)
    {
      goto LABEL_146;
    }

    v75 = v515 + v73;
  }

  else
  {
    v75 = v515 - fabs(v73);
  }

  v515 = v75;
LABEL_146:
  if ((v6 & 0x20) == 0)
  {
    v506 = 0;
    goto LABEL_155;
  }

  firstPartyMsgNightSun = self->_firstPartyMsgNightSun;
  if (firstPartyMsgNightSun < 0.0)
  {
    firstPartyMsgNightSun = -firstPartyMsgNightSun;
  }

  *v2.i64 = floor(firstPartyMsgNightSun + 0.5);
  v77 = (firstPartyMsgNightSun - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v78.f64[0] = NAN;
  v78.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v78), v3, v2);
  v506 = 2654435761u * *v2.i64;
  if (v77 >= 0.0)
  {
    if (v77 <= 0.0)
    {
      goto LABEL_155;
    }

    v79 = v506 + v77;
  }

  else
  {
    v79 = v506 - fabs(v77);
  }

  v506 = v79;
LABEL_155:
  if ((v6 & 0x4000) == 0)
  {
    v504 = 0;
    goto LABEL_164;
  }

  firstPartyMsgTwoWeeks = self->_firstPartyMsgTwoWeeks;
  if (firstPartyMsgTwoWeeks < 0.0)
  {
    firstPartyMsgTwoWeeks = -firstPartyMsgTwoWeeks;
  }

  *v2.i64 = floor(firstPartyMsgTwoWeeks + 0.5);
  v81 = (firstPartyMsgTwoWeeks - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v82.f64[0] = NAN;
  v82.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v82), v3, v2);
  v504 = 2654435761u * *v2.i64;
  if (v81 >= 0.0)
  {
    if (v81 <= 0.0)
    {
      goto LABEL_164;
    }

    v83 = v504 + v81;
  }

  else
  {
    v83 = v504 - fabs(v81);
  }

  v504 = v83;
LABEL_164:
  if ((v6 & 0x1000) == 0)
  {
    v503 = 0;
    goto LABEL_173;
  }

  firstPartyMsgSixWeeks = self->_firstPartyMsgSixWeeks;
  if (firstPartyMsgSixWeeks < 0.0)
  {
    firstPartyMsgSixWeeks = -firstPartyMsgSixWeeks;
  }

  *v2.i64 = floor(firstPartyMsgSixWeeks + 0.5);
  v85 = (firstPartyMsgSixWeeks - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v86.f64[0] = NAN;
  v86.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v86), v3, v2);
  v503 = 2654435761u * *v2.i64;
  if (v85 >= 0.0)
  {
    if (v85 <= 0.0)
    {
      goto LABEL_173;
    }

    v87 = v503 + v85;
  }

  else
  {
    v87 = v503 - fabs(v85);
  }

  v503 = v87;
LABEL_173:
  if ((v6 & 0x100000000) == 0)
  {
    v484 = 0;
    if ((v6 & 0x8000) != 0)
    {
      goto LABEL_175;
    }

LABEL_180:
    v502 = 0;
    goto LABEL_184;
  }

  v484 = 2654435761u * self->_thirdPartyMsgTotal;
  if ((v6 & 0x8000) == 0)
  {
    goto LABEL_180;
  }

LABEL_175:
  thirdPartyMsgDayRatio = self->_thirdPartyMsgDayRatio;
  if (thirdPartyMsgDayRatio < 0.0)
  {
    thirdPartyMsgDayRatio = -thirdPartyMsgDayRatio;
  }

  *v2.i64 = floor(thirdPartyMsgDayRatio + 0.5);
  v89 = (thirdPartyMsgDayRatio - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v90.f64[0] = NAN;
  v90.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v90), v3, v2);
  v502 = 2654435761u * *v2.i64;
  if (v89 >= 0.0)
  {
    if (v89 <= 0.0)
    {
      goto LABEL_184;
    }

    v91 = v502 + v89;
  }

  else
  {
    v91 = v502 - fabs(v89);
  }

  v502 = v91;
LABEL_184:
  v92 = v48;
  v93 = v44;
  if ((v6 & 0x800000) == 0)
  {
    v94 = v40;
    v501 = 0;
    goto LABEL_193;
  }

  thirdPartyMsgMorningWeekday = self->_thirdPartyMsgMorningWeekday;
  if (thirdPartyMsgMorningWeekday < 0.0)
  {
    thirdPartyMsgMorningWeekday = -thirdPartyMsgMorningWeekday;
  }

  *v2.i64 = floor(thirdPartyMsgMorningWeekday + 0.5);
  v96 = (thirdPartyMsgMorningWeekday - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v97.f64[0] = NAN;
  v97.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v97), v3, v2);
  v501 = 2654435761u * *v2.i64;
  v94 = v40;
  if (v96 >= 0.0)
  {
    if (v96 <= 0.0)
    {
      goto LABEL_193;
    }

    v98 = v501 + v96;
  }

  else
  {
    v98 = v501 - fabs(v96);
  }

  v501 = v98;
LABEL_193:
  v99 = v36;
  v100 = v32;
  if ((v6 & 0x100000) == 0)
  {
    v101 = v28;
    v499 = 0;
    goto LABEL_202;
  }

  thirdPartyMsgMorningFri = self->_thirdPartyMsgMorningFri;
  if (thirdPartyMsgMorningFri < 0.0)
  {
    thirdPartyMsgMorningFri = -thirdPartyMsgMorningFri;
  }

  *v2.i64 = floor(thirdPartyMsgMorningFri + 0.5);
  v103 = (thirdPartyMsgMorningFri - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v104.f64[0] = NAN;
  v104.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v104), v3, v2);
  v499 = 2654435761u * *v2.i64;
  v101 = v28;
  if (v103 >= 0.0)
  {
    if (v103 <= 0.0)
    {
      goto LABEL_202;
    }

    v105 = v499 + v103;
  }

  else
  {
    v105 = v499 - fabs(v103);
  }

  v499 = v105;
LABEL_202:
  v106 = v24;
  v107 = v16;
  if ((v6 & 0x200000) == 0)
  {
    v108 = v12;
    v514 = 0;
    goto LABEL_211;
  }

  thirdPartyMsgMorningSat = self->_thirdPartyMsgMorningSat;
  if (thirdPartyMsgMorningSat < 0.0)
  {
    thirdPartyMsgMorningSat = -thirdPartyMsgMorningSat;
  }

  *v2.i64 = floor(thirdPartyMsgMorningSat + 0.5);
  v110 = (thirdPartyMsgMorningSat - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v111.f64[0] = NAN;
  v111.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v111), v3, v2);
  v514 = 2654435761u * *v2.i64;
  v108 = v12;
  if (v110 >= 0.0)
  {
    if (v110 <= 0.0)
    {
      goto LABEL_211;
    }

    v112 = v514 + v110;
  }

  else
  {
    v112 = v514 - fabs(v110);
  }

  v514 = v112;
LABEL_211:
  v113 = v8;
  if ((v6 & 0x400000) == 0)
  {
    v497 = 0;
    goto LABEL_220;
  }

  thirdPartyMsgMorningSun = self->_thirdPartyMsgMorningSun;
  if (thirdPartyMsgMorningSun < 0.0)
  {
    thirdPartyMsgMorningSun = -thirdPartyMsgMorningSun;
  }

  *v2.i64 = floor(thirdPartyMsgMorningSun + 0.5);
  v115 = (thirdPartyMsgMorningSun - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v116.f64[0] = NAN;
  v116.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v116), v3, v2);
  if (v115 >= 0.0)
  {
    v497 = 2654435761u * *v2.i64;
    if (v115 <= 0.0)
    {
      goto LABEL_220;
    }

    v117 = v497 + v115;
  }

  else
  {
    v117 = 2654435761u * *v2.i64 - fabs(v115);
  }

  v497 = v117;
LABEL_220:
  if ((v6 & 0x80000000) != 0)
  {
    thirdPartyMsgNoonWeekday = self->_thirdPartyMsgNoonWeekday;
    if (thirdPartyMsgNoonWeekday < 0.0)
    {
      thirdPartyMsgNoonWeekday = -thirdPartyMsgNoonWeekday;
    }

    *v2.i64 = floor(thirdPartyMsgNoonWeekday + 0.5);
    v120 = (thirdPartyMsgNoonWeekday - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v121.f64[0] = NAN;
    v121.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v121), v3, v2);
    v118 = 2654435761u * *v2.i64;
    if (v120 >= 0.0)
    {
      if (v120 > 0.0)
      {
        v118 += v120;
      }
    }

    else
    {
      v118 -= fabs(v120);
    }
  }

  else
  {
    v118 = 0;
  }

  v479 = v118;
  v481 = v113;
  v483 = v108;
  v482 = v107;
  if ((v6 & 0x10000000) == 0)
  {
    v496 = 0;
    goto LABEL_237;
  }

  thirdPartyMsgNoonFri = self->_thirdPartyMsgNoonFri;
  if (thirdPartyMsgNoonFri < 0.0)
  {
    thirdPartyMsgNoonFri = -thirdPartyMsgNoonFri;
  }

  *v2.i64 = floor(thirdPartyMsgNoonFri + 0.5);
  v123 = (thirdPartyMsgNoonFri - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v124.f64[0] = NAN;
  v124.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v124), v3, v2);
  if (v123 >= 0.0)
  {
    v496 = 2654435761u * *v2.i64;
    if (v123 <= 0.0)
    {
      goto LABEL_237;
    }

    v125 = v496 + v123;
  }

  else
  {
    v125 = 2654435761u * *v2.i64 - fabs(v123);
  }

  v496 = v125;
LABEL_237:
  v485 = v106;
  v487 = v100;
  v486 = v101;
  if ((v6 & 0x20000000) == 0)
  {
    v513 = 0;
    goto LABEL_246;
  }

  thirdPartyMsgNoonSat = self->_thirdPartyMsgNoonSat;
  if (thirdPartyMsgNoonSat < 0.0)
  {
    thirdPartyMsgNoonSat = -thirdPartyMsgNoonSat;
  }

  *v2.i64 = floor(thirdPartyMsgNoonSat + 0.5);
  v127 = (thirdPartyMsgNoonSat - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v128.f64[0] = NAN;
  v128.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v128), v3, v2);
  v513 = 2654435761u * *v2.i64;
  if (v127 >= 0.0)
  {
    if (v127 <= 0.0)
    {
      goto LABEL_246;
    }

    v129 = v513 + v127;
  }

  else
  {
    v129 = v513 - fabs(v127);
  }

  v513 = v129;
LABEL_246:
  v488 = v99;
  v491 = v93;
  v489 = v94;
  if ((v6 & 0x40000000) == 0)
  {
    v495 = 0;
    goto LABEL_255;
  }

  thirdPartyMsgNoonSun = self->_thirdPartyMsgNoonSun;
  if (thirdPartyMsgNoonSun < 0.0)
  {
    thirdPartyMsgNoonSun = -thirdPartyMsgNoonSun;
  }

  *v2.i64 = floor(thirdPartyMsgNoonSun + 0.5);
  v131 = (thirdPartyMsgNoonSun - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v132.f64[0] = NAN;
  v132.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v132), v3, v2);
  if (v131 >= 0.0)
  {
    v495 = 2654435761u * *v2.i64;
    if (v131 <= 0.0)
    {
      goto LABEL_255;
    }

    v133 = v495 + v131;
  }

  else
  {
    v133 = 2654435761u * *v2.i64 - fabs(v131);
  }

  v495 = v133;
LABEL_255:
  v490 = v92;
  if ((v6 & 0x80000) == 0)
  {
    v512 = 0;
    goto LABEL_264;
  }

  thirdPartyMsgEveWeekday = self->_thirdPartyMsgEveWeekday;
  if (thirdPartyMsgEveWeekday < 0.0)
  {
    thirdPartyMsgEveWeekday = -thirdPartyMsgEveWeekday;
  }

  *v2.i64 = floor(thirdPartyMsgEveWeekday + 0.5);
  v135 = (thirdPartyMsgEveWeekday - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v136.f64[0] = NAN;
  v136.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v136), v3, v2);
  v512 = 2654435761u * *v2.i64;
  if (v135 >= 0.0)
  {
    if (v135 <= 0.0)
    {
      goto LABEL_264;
    }

    v137 = v512 + v135;
  }

  else
  {
    v137 = v512 - fabs(v135);
  }

  v512 = v137;
LABEL_264:
  if ((v6 & 0x10000) == 0)
  {
    v511 = 0;
    goto LABEL_273;
  }

  thirdPartyMsgEveFri = self->_thirdPartyMsgEveFri;
  if (thirdPartyMsgEveFri < 0.0)
  {
    thirdPartyMsgEveFri = -thirdPartyMsgEveFri;
  }

  *v2.i64 = floor(thirdPartyMsgEveFri + 0.5);
  v139 = (thirdPartyMsgEveFri - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v140.f64[0] = NAN;
  v140.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v140), v3, v2);
  v511 = 2654435761u * *v2.i64;
  if (v139 >= 0.0)
  {
    if (v139 <= 0.0)
    {
      goto LABEL_273;
    }

    v141 = v511 + v139;
  }

  else
  {
    v141 = v511 - fabs(v139);
  }

  v511 = v141;
LABEL_273:
  if ((v6 & 0x20000) == 0)
  {
    v494 = 0;
    goto LABEL_282;
  }

  thirdPartyMsgEveSat = self->_thirdPartyMsgEveSat;
  if (thirdPartyMsgEveSat < 0.0)
  {
    thirdPartyMsgEveSat = -thirdPartyMsgEveSat;
  }

  *v2.i64 = floor(thirdPartyMsgEveSat + 0.5);
  v143 = (thirdPartyMsgEveSat - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v144.f64[0] = NAN;
  v144.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v144), v3, v2);
  if (v143 >= 0.0)
  {
    v494 = 2654435761u * *v2.i64;
    if (v143 <= 0.0)
    {
      goto LABEL_282;
    }

    v145 = v494 + v143;
  }

  else
  {
    v145 = 2654435761u * *v2.i64 - fabs(v143);
  }

  v494 = v145;
LABEL_282:
  if ((v6 & 0x40000) == 0)
  {
    v510 = 0;
    goto LABEL_291;
  }

  thirdPartyMsgEveSun = self->_thirdPartyMsgEveSun;
  if (thirdPartyMsgEveSun < 0.0)
  {
    thirdPartyMsgEveSun = -thirdPartyMsgEveSun;
  }

  *v2.i64 = floor(thirdPartyMsgEveSun + 0.5);
  v147 = (thirdPartyMsgEveSun - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v148.f64[0] = NAN;
  v148.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v148), v3, v2);
  v510 = 2654435761u * *v2.i64;
  if (v147 >= 0.0)
  {
    if (v147 <= 0.0)
    {
      goto LABEL_291;
    }

    v149 = v510 + v147;
  }

  else
  {
    v149 = v510 - fabs(v147);
  }

  v510 = v149;
LABEL_291:
  if ((v6 & 0x8000000) != 0)
  {
    thirdPartyMsgNightWeekday = self->_thirdPartyMsgNightWeekday;
    if (thirdPartyMsgNightWeekday < 0.0)
    {
      thirdPartyMsgNightWeekday = -thirdPartyMsgNightWeekday;
    }

    *v2.i64 = floor(thirdPartyMsgNightWeekday + 0.5);
    v152 = (thirdPartyMsgNightWeekday - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v153.f64[0] = NAN;
    v153.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v153), v3, v2);
    v150 = 2654435761u * *v2.i64;
    if (v152 >= 0.0)
    {
      if (v152 > 0.0)
      {
        v150 += v152;
      }
    }

    else
    {
      v150 -= fabs(v152);
    }
  }

  else
  {
    v150 = 0;
  }

  v478 = v150;
  if ((v6 & 0x1000000) == 0)
  {
    v509 = 0;
    goto LABEL_308;
  }

  thirdPartyMsgNightFri = self->_thirdPartyMsgNightFri;
  if (thirdPartyMsgNightFri < 0.0)
  {
    thirdPartyMsgNightFri = -thirdPartyMsgNightFri;
  }

  *v2.i64 = floor(thirdPartyMsgNightFri + 0.5);
  v155 = (thirdPartyMsgNightFri - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v156.f64[0] = NAN;
  v156.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v156), v3, v2);
  v509 = 2654435761u * *v2.i64;
  if (v155 >= 0.0)
  {
    if (v155 <= 0.0)
    {
      goto LABEL_308;
    }

    v157 = v509 + v155;
  }

  else
  {
    v157 = v509 - fabs(v155);
  }

  v509 = v157;
LABEL_308:
  if ((v6 & 0x2000000) != 0)
  {
    thirdPartyMsgNightSat = self->_thirdPartyMsgNightSat;
    if (thirdPartyMsgNightSat < 0.0)
    {
      thirdPartyMsgNightSat = -thirdPartyMsgNightSat;
    }

    *v2.i64 = floor(thirdPartyMsgNightSat + 0.5);
    v160 = (thirdPartyMsgNightSat - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v161.f64[0] = NAN;
    v161.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v161), v3, v2);
    v158 = 2654435761u * *v2.i64;
    if (v160 >= 0.0)
    {
      if (v160 > 0.0)
      {
        v158 += v160;
      }
    }

    else
    {
      v158 -= fabs(v160);
    }
  }

  else
  {
    v158 = 0;
  }

  v477 = v158;
  if ((v6 & 0x4000000) != 0)
  {
    thirdPartyMsgNightSun = self->_thirdPartyMsgNightSun;
    if (thirdPartyMsgNightSun < 0.0)
    {
      thirdPartyMsgNightSun = -thirdPartyMsgNightSun;
    }

    *v2.i64 = floor(thirdPartyMsgNightSun + 0.5);
    v164 = (thirdPartyMsgNightSun - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v165.f64[0] = NAN;
    v165.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v165), v3, v2);
    v162 = 2654435761u * *v2.i64;
    if (v164 >= 0.0)
    {
      if (v164 > 0.0)
      {
        v162 += v164;
      }
    }

    else
    {
      v162 -= fabs(v164);
    }
  }

  else
  {
    v162 = 0;
  }

  if ((v6 & 0x200000000) != 0)
  {
    thirdPartyMsgTwoWeeks = self->_thirdPartyMsgTwoWeeks;
    if (thirdPartyMsgTwoWeeks < 0.0)
    {
      thirdPartyMsgTwoWeeks = -thirdPartyMsgTwoWeeks;
    }

    *v2.i64 = floor(thirdPartyMsgTwoWeeks + 0.5);
    v168 = (thirdPartyMsgTwoWeeks - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v169.f64[0] = NAN;
    v169.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v169), v3, v2);
    v166 = 2654435761u * *v2.i64;
    if (v168 >= 0.0)
    {
      if (v168 > 0.0)
      {
        v166 += v168;
      }
    }

    else
    {
      v166 -= fabs(v168);
    }
  }

  else
  {
    v166 = 0;
  }

  v475 = v166;
  if ((v7 & 0x40000000000000) != 0)
  {
    v474 = 2654435761u * self->_callTotal;
    if ((v6 & 0x400000000) != 0)
    {
LABEL_334:
      v473 = 2654435761 * self->_callBirthday;
      if ((v6 & 0x8000000000) != 0)
      {
        goto LABEL_335;
      }

LABEL_342:
      v472 = 0;
      if ((v7 & 0x80000000000000) != 0)
      {
        goto LABEL_336;
      }

LABEL_343:
      v173 = 0;
      goto LABEL_344;
    }
  }

  else
  {
    v474 = 0;
    if ((v6 & 0x400000000) != 0)
    {
      goto LABEL_334;
    }
  }

  v473 = 0;
  if ((v6 & 0x8000000000) == 0)
  {
    goto LABEL_342;
  }

LABEL_335:
  v472 = 2654435761 * self->_contactFavorite;
  if ((v7 & 0x80000000000000) == 0)
  {
    goto LABEL_343;
  }

LABEL_336:
  callTotalDur = self->_callTotalDur;
  if (callTotalDur < 0.0)
  {
    callTotalDur = -callTotalDur;
  }

  *v2.i64 = floor(callTotalDur + 0.5);
  v171 = (callTotalDur - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v172.f64[0] = NAN;
  v172.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v172), v3, v2);
  v173 = 2654435761u * *v2.i64;
  if (v171 >= 0.0)
  {
    if (v171 > 0.0)
    {
      v173 += v171;
    }
  }

  else
  {
    v173 -= fabs(v171);
  }

LABEL_344:
  if ((v7 & 2) != 0)
  {
    callDayRatio = self->_callDayRatio;
    if (callDayRatio < 0.0)
    {
      callDayRatio = -callDayRatio;
    }

    *v2.i64 = floor(callDayRatio + 0.5);
    v176 = (callDayRatio - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v177.f64[0] = NAN;
    v177.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v177), v3, v2);
    v174 = 2654435761u * *v2.i64;
    if (v176 >= 0.0)
    {
      if (v176 > 0.0)
      {
        v174 += v176;
      }
    }

    else
    {
      v174 -= fabs(v176);
    }
  }

  else
  {
    v174 = 0;
  }

  v470 = v174;
  if ((v7 & 0x4000000000) != 0)
  {
    callLongRatio = self->_callLongRatio;
    if (callLongRatio < 0.0)
    {
      callLongRatio = -callLongRatio;
    }

    *v2.i64 = floor(callLongRatio + 0.5);
    v180 = (callLongRatio - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v181.f64[0] = NAN;
    v181.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v181), v3, v2);
    v178 = 2654435761u * *v2.i64;
    if (v180 >= 0.0)
    {
      if (v180 > 0.0)
      {
        v178 += v180;
      }
    }

    else
    {
      v178 -= fabs(v180);
    }
  }

  else
  {
    v178 = 0;
  }

  if ((v7 & 0x10000000000000) != 0)
  {
    callOutgoingRatio = self->_callOutgoingRatio;
    if (callOutgoingRatio < 0.0)
    {
      callOutgoingRatio = -callOutgoingRatio;
    }

    *v2.i64 = floor(callOutgoingRatio + 0.5);
    v184 = (callOutgoingRatio - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v185.f64[0] = NAN;
    v185.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v185), v3, v2);
    v182 = 2654435761u * *v2.i64;
    if (v184 >= 0.0)
    {
      if (v184 > 0.0)
      {
        v182 += v184;
      }
    }

    else
    {
      v182 -= fabs(v184);
    }
  }

  else
  {
    v182 = 0;
  }

  v468 = v182;
  if (v7)
  {
    callAvgDur = self->_callAvgDur;
    if (callAvgDur < 0.0)
    {
      callAvgDur = -callAvgDur;
    }

    *v2.i64 = floor(callAvgDur + 0.5);
    v188 = (callAvgDur - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v189.f64[0] = NAN;
    v189.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v189), v3, v2);
    v186 = 2654435761u * *v2.i64;
    if (v188 >= 0.0)
    {
      if (v188 > 0.0)
      {
        v186 += v188;
      }
    }

    else
    {
      v186 -= fabs(v188);
    }
  }

  else
  {
    v186 = 0;
  }

  if ((v7 & 0x8000000000) != 0)
  {
    callMaxDur = self->_callMaxDur;
    if (callMaxDur < 0.0)
    {
      callMaxDur = -callMaxDur;
    }

    *v2.i64 = floor(callMaxDur + 0.5);
    v192 = (callMaxDur - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v193.f64[0] = NAN;
    v193.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v193), v3, v2);
    v190 = 2654435761u * *v2.i64;
    if (v192 >= 0.0)
    {
      if (v192 > 0.0)
      {
        v190 += v192;
      }
    }

    else
    {
      v190 -= fabs(v192);
    }
  }

  else
  {
    v190 = 0;
  }

  v466 = v190;
  if ((v7 & 0x80000000000) != 0)
  {
    callMorningWeekday = self->_callMorningWeekday;
    if (callMorningWeekday < 0.0)
    {
      callMorningWeekday = -callMorningWeekday;
    }

    *v2.i64 = floor(callMorningWeekday + 0.5);
    v196 = (callMorningWeekday - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v197.f64[0] = NAN;
    v197.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v197), v3, v2);
    v194 = 2654435761u * *v2.i64;
    if (v196 >= 0.0)
    {
      if (v196 > 0.0)
      {
        v194 += v196;
      }
    }

    else
    {
      v194 -= fabs(v196);
    }
  }

  else
  {
    v194 = 0;
  }

  if ((v7 & 0x10000000000) != 0)
  {
    callMorningFri = self->_callMorningFri;
    if (callMorningFri < 0.0)
    {
      callMorningFri = -callMorningFri;
    }

    *v2.i64 = floor(callMorningFri + 0.5);
    v200 = (callMorningFri - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v201.f64[0] = NAN;
    v201.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v201), v3, v2);
    v198 = 2654435761u * *v2.i64;
    if (v200 >= 0.0)
    {
      if (v200 > 0.0)
      {
        v198 += v200;
      }
    }

    else
    {
      v198 -= fabs(v200);
    }
  }

  else
  {
    v198 = 0;
  }

  v464 = v198;
  if ((v7 & 0x20000000000) != 0)
  {
    callMorningSat = self->_callMorningSat;
    if (callMorningSat < 0.0)
    {
      callMorningSat = -callMorningSat;
    }

    *v2.i64 = floor(callMorningSat + 0.5);
    v204 = (callMorningSat - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v205.f64[0] = NAN;
    v205.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v205), v3, v2);
    v202 = 2654435761u * *v2.i64;
    if (v204 >= 0.0)
    {
      if (v204 > 0.0)
      {
        v202 += v204;
      }
    }

    else
    {
      v202 -= fabs(v204);
    }
  }

  else
  {
    v202 = 0;
  }

  if ((v7 & 0x40000000000) != 0)
  {
    callMorningSun = self->_callMorningSun;
    if (callMorningSun < 0.0)
    {
      callMorningSun = -callMorningSun;
    }

    *v2.i64 = floor(callMorningSun + 0.5);
    v208 = (callMorningSun - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v209.f64[0] = NAN;
    v209.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v209), v3, v2);
    v206 = 2654435761u * *v2.i64;
    if (v208 >= 0.0)
    {
      if (v208 > 0.0)
      {
        v206 += v208;
      }
    }

    else
    {
      v206 -= fabs(v208);
    }
  }

  else
  {
    v206 = 0;
  }

  v462 = v206;
  if ((v7 & 0x8000000000000) != 0)
  {
    callNoonWeekday = self->_callNoonWeekday;
    if (callNoonWeekday < 0.0)
    {
      callNoonWeekday = -callNoonWeekday;
    }

    *v2.i64 = floor(callNoonWeekday + 0.5);
    v212 = (callNoonWeekday - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v213.f64[0] = NAN;
    v213.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v213), v3, v2);
    v210 = 2654435761u * *v2.i64;
    if (v212 >= 0.0)
    {
      if (v212 > 0.0)
      {
        v210 += v212;
      }
    }

    else
    {
      v210 -= fabs(v212);
    }
  }

  else
  {
    v210 = 0;
  }

  if ((v7 & 0x1000000000000) != 0)
  {
    callNoonFri = self->_callNoonFri;
    if (callNoonFri < 0.0)
    {
      callNoonFri = -callNoonFri;
    }

    *v2.i64 = floor(callNoonFri + 0.5);
    v216 = (callNoonFri - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v217.f64[0] = NAN;
    v217.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v217), v3, v2);
    v214 = 2654435761u * *v2.i64;
    if (v216 >= 0.0)
    {
      if (v216 > 0.0)
      {
        v214 += v216;
      }
    }

    else
    {
      v214 -= fabs(v216);
    }
  }

  else
  {
    v214 = 0;
  }

  v460 = v214;
  if ((v7 & 0x2000000000000) != 0)
  {
    callNoonSat = self->_callNoonSat;
    if (callNoonSat < 0.0)
    {
      callNoonSat = -callNoonSat;
    }

    *v2.i64 = floor(callNoonSat + 0.5);
    v220 = (callNoonSat - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v221.f64[0] = NAN;
    v221.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v221), v3, v2);
    v218 = 2654435761u * *v2.i64;
    if (v220 >= 0.0)
    {
      if (v220 > 0.0)
      {
        v218 += v220;
      }
    }

    else
    {
      v218 -= fabs(v220);
    }
  }

  else
  {
    v218 = 0;
  }

  if ((v7 & 0x4000000000000) != 0)
  {
    callNoonSun = self->_callNoonSun;
    if (callNoonSun < 0.0)
    {
      callNoonSun = -callNoonSun;
    }

    *v2.i64 = floor(callNoonSun + 0.5);
    v224 = (callNoonSun - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v225.f64[0] = NAN;
    v225.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v225), v3, v2);
    v222 = 2654435761u * *v2.i64;
    if (v224 >= 0.0)
    {
      if (v224 > 0.0)
      {
        v222 += v224;
      }
    }

    else
    {
      v222 -= fabs(v224);
    }
  }

  else
  {
    v222 = 0;
  }

  v458 = v222;
  if ((v7 & 0x200000) != 0)
  {
    callEveWeekday = self->_callEveWeekday;
    if (callEveWeekday < 0.0)
    {
      callEveWeekday = -callEveWeekday;
    }

    *v2.i64 = floor(callEveWeekday + 0.5);
    v228 = (callEveWeekday - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v229.f64[0] = NAN;
    v229.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v229), v3, v2);
    v226 = 2654435761u * *v2.i64;
    if (v228 >= 0.0)
    {
      if (v228 > 0.0)
      {
        v226 += v228;
      }
    }

    else
    {
      v226 -= fabs(v228);
    }
  }

  else
  {
    v226 = 0;
  }

  if ((v7 & 0x40000) != 0)
  {
    callEveFri = self->_callEveFri;
    if (callEveFri < 0.0)
    {
      callEveFri = -callEveFri;
    }

    *v2.i64 = floor(callEveFri + 0.5);
    v232 = (callEveFri - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v233.f64[0] = NAN;
    v233.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v233), v3, v2);
    v230 = 2654435761u * *v2.i64;
    if (v232 >= 0.0)
    {
      if (v232 > 0.0)
      {
        v230 += v232;
      }
    }

    else
    {
      v230 -= fabs(v232);
    }
  }

  else
  {
    v230 = 0;
  }

  v457 = v230;
  if ((v7 & 0x80000) != 0)
  {
    callEveSat = self->_callEveSat;
    if (callEveSat < 0.0)
    {
      callEveSat = -callEveSat;
    }

    *v2.i64 = floor(callEveSat + 0.5);
    v236 = (callEveSat - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v237.f64[0] = NAN;
    v237.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v237), v3, v2);
    v234 = 2654435761u * *v2.i64;
    if (v236 >= 0.0)
    {
      if (v236 > 0.0)
      {
        v234 += v236;
      }
    }

    else
    {
      v234 -= fabs(v236);
    }
  }

  else
  {
    v234 = 0;
  }

  if ((v7 & 0x100000) != 0)
  {
    callEveSun = self->_callEveSun;
    if (callEveSun < 0.0)
    {
      callEveSun = -callEveSun;
    }

    *v2.i64 = floor(callEveSun + 0.5);
    v240 = (callEveSun - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v241.f64[0] = NAN;
    v241.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v241), v3, v2);
    v238 = 2654435761u * *v2.i64;
    if (v240 >= 0.0)
    {
      if (v240 > 0.0)
      {
        v238 += v240;
      }
    }

    else
    {
      v238 -= fabs(v240);
    }
  }

  else
  {
    v238 = 0;
  }

  v456 = v238;
  if ((v7 & 0x800000000000) != 0)
  {
    callNightWeekday = self->_callNightWeekday;
    if (callNightWeekday < 0.0)
    {
      callNightWeekday = -callNightWeekday;
    }

    *v2.i64 = floor(callNightWeekday + 0.5);
    v244 = (callNightWeekday - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v245.f64[0] = NAN;
    v245.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v245), v3, v2);
    v242 = 2654435761u * *v2.i64;
    if (v244 >= 0.0)
    {
      if (v244 > 0.0)
      {
        v242 += v244;
      }
    }

    else
    {
      v242 -= fabs(v244);
    }
  }

  else
  {
    v242 = 0;
  }

  if ((v7 & 0x100000000000) != 0)
  {
    callNightFri = self->_callNightFri;
    if (callNightFri < 0.0)
    {
      callNightFri = -callNightFri;
    }

    *v2.i64 = floor(callNightFri + 0.5);
    v248 = (callNightFri - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v249.f64[0] = NAN;
    v249.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v249), v3, v2);
    v246 = 2654435761u * *v2.i64;
    if (v248 >= 0.0)
    {
      if (v248 > 0.0)
      {
        v246 += v248;
      }
    }

    else
    {
      v246 -= fabs(v248);
    }
  }

  else
  {
    v246 = 0;
  }

  v455 = v246;
  if ((v7 & 0x200000000000) != 0)
  {
    callNightSat = self->_callNightSat;
    if (callNightSat < 0.0)
    {
      callNightSat = -callNightSat;
    }

    *v2.i64 = floor(callNightSat + 0.5);
    v252 = (callNightSat - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v253.f64[0] = NAN;
    v253.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v253), v3, v2);
    v250 = 2654435761u * *v2.i64;
    if (v252 >= 0.0)
    {
      if (v252 > 0.0)
      {
        v250 += v252;
      }
    }

    else
    {
      v250 -= fabs(v252);
    }
  }

  else
  {
    v250 = 0;
  }

  if ((v7 & 0x400000000000) != 0)
  {
    callNightSun = self->_callNightSun;
    if (callNightSun < 0.0)
    {
      callNightSun = -callNightSun;
    }

    *v2.i64 = floor(callNightSun + 0.5);
    v256 = (callNightSun - *v2.i64) * 1.84467441e19;
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

  v459 = v218;
  v454 = v254;
  if ((v7 & 0x200) != 0)
  {
    callDurMorningWeekday = self->_callDurMorningWeekday;
    if (callDurMorningWeekday < 0.0)
    {
      callDurMorningWeekday = -callDurMorningWeekday;
    }

    *v2.i64 = floor(callDurMorningWeekday + 0.5);
    v260 = (callDurMorningWeekday - *v2.i64) * 1.84467441e19;
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

  if ((v7 & 0x40) != 0)
  {
    callDurMorningFri = self->_callDurMorningFri;
    if (callDurMorningFri < 0.0)
    {
      callDurMorningFri = -callDurMorningFri;
    }

    *v2.i64 = floor(callDurMorningFri + 0.5);
    v264 = (callDurMorningFri - *v2.i64) * 1.84467441e19;
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

  v452 = v262;
  if ((v7 & 0x80) != 0)
  {
    callDurMorningSat = self->_callDurMorningSat;
    if (callDurMorningSat < 0.0)
    {
      callDurMorningSat = -callDurMorningSat;
    }

    *v2.i64 = floor(callDurMorningSat + 0.5);
    v268 = (callDurMorningSat - *v2.i64) * 1.84467441e19;
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

  if ((v7 & 0x100) != 0)
  {
    callDurMorningSun = self->_callDurMorningSun;
    if (callDurMorningSun < 0.0)
    {
      callDurMorningSun = -callDurMorningSun;
    }

    *v2.i64 = floor(callDurMorningSun + 0.5);
    v272 = (callDurMorningSun - *v2.i64) * 1.84467441e19;
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

  v451 = v270;
  v476 = v162;
  if ((v7 & 0x20000) != 0)
  {
    callDurNoonWeekday = self->_callDurNoonWeekday;
    if (callDurNoonWeekday < 0.0)
    {
      callDurNoonWeekday = -callDurNoonWeekday;
    }

    *v2.i64 = floor(callDurNoonWeekday + 0.5);
    v276 = (callDurNoonWeekday - *v2.i64) * 1.84467441e19;
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

  v450 = v274;
  if ((v7 & 0x4000) != 0)
  {
    callDurNoonFri = self->_callDurNoonFri;
    if (callDurNoonFri < 0.0)
    {
      callDurNoonFri = -callDurNoonFri;
    }

    *v2.i64 = floor(callDurNoonFri + 0.5);
    v280 = (callDurNoonFri - *v2.i64) * 1.84467441e19;
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

  if ((v7 & 0x8000) != 0)
  {
    callDurNoonSat = self->_callDurNoonSat;
    if (callDurNoonSat < 0.0)
    {
      callDurNoonSat = -callDurNoonSat;
    }

    *v2.i64 = floor(callDurNoonSat + 0.5);
    v284 = (callDurNoonSat - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v285.f64[0] = NAN;
    v285.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v285), v3, v2);
    v282 = 2654435761u * *v2.i64;
    if (v284 >= 0.0)
    {
      if (v284 > 0.0)
      {
        v282 += v284;
      }
    }

    else
    {
      v282 -= fabs(v284);
    }
  }

  else
  {
    v282 = 0;
  }

  v448 = v282;
  if ((v7 & 0x10000) != 0)
  {
    callDurNoonSun = self->_callDurNoonSun;
    if (callDurNoonSun < 0.0)
    {
      callDurNoonSun = -callDurNoonSun;
    }

    *v2.i64 = floor(callDurNoonSun + 0.5);
    v288 = (callDurNoonSun - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v289.f64[0] = NAN;
    v289.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v289), v3, v2);
    v286 = 2654435761u * *v2.i64;
    if (v288 >= 0.0)
    {
      if (v288 > 0.0)
      {
        v286 += v288;
      }
    }

    else
    {
      v286 -= fabs(v288);
    }
  }

  else
  {
    v286 = 0;
  }

  if ((v7 & 0x20) != 0)
  {
    callDurEveWeekday = self->_callDurEveWeekday;
    if (callDurEveWeekday < 0.0)
    {
      callDurEveWeekday = -callDurEveWeekday;
    }

    *v2.i64 = floor(callDurEveWeekday + 0.5);
    v292 = (callDurEveWeekday - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v293.f64[0] = NAN;
    v293.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v293), v3, v2);
    v290 = 2654435761u * *v2.i64;
    if (v292 >= 0.0)
    {
      if (v292 > 0.0)
      {
        v290 += v292;
      }
    }

    else
    {
      v290 -= fabs(v292);
    }
  }

  else
  {
    v290 = 0;
  }

  v447 = v290;
  if ((v7 & 4) != 0)
  {
    callDurEveFri = self->_callDurEveFri;
    if (callDurEveFri < 0.0)
    {
      callDurEveFri = -callDurEveFri;
    }

    *v2.i64 = floor(callDurEveFri + 0.5);
    v296 = (callDurEveFri - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v297.f64[0] = NAN;
    v297.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v297), v3, v2);
    v294 = 2654435761u * *v2.i64;
    if (v296 >= 0.0)
    {
      if (v296 > 0.0)
      {
        v294 += v296;
      }
    }

    else
    {
      v294 -= fabs(v296);
    }
  }

  else
  {
    v294 = 0;
  }

  if ((v7 & 8) != 0)
  {
    callDurEveSat = self->_callDurEveSat;
    if (callDurEveSat < 0.0)
    {
      callDurEveSat = -callDurEveSat;
    }

    *v2.i64 = floor(callDurEveSat + 0.5);
    v300 = (callDurEveSat - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v301.f64[0] = NAN;
    v301.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v301), v3, v2);
    v298 = 2654435761u * *v2.i64;
    if (v300 >= 0.0)
    {
      if (v300 > 0.0)
      {
        v298 += v300;
      }
    }

    else
    {
      v298 -= fabs(v300);
    }
  }

  else
  {
    v298 = 0;
  }

  v446 = v298;
  if ((v7 & 0x10) != 0)
  {
    callDurEveSun = self->_callDurEveSun;
    if (callDurEveSun < 0.0)
    {
      callDurEveSun = -callDurEveSun;
    }

    *v2.i64 = floor(callDurEveSun + 0.5);
    v305 = (callDurEveSun - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v306.f64[0] = NAN;
    v306.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v306), v3, v2);
    v302 = 2654435761u * *v2.i64;
    v303 = v173;
    if (v305 >= 0.0)
    {
      if (v305 > 0.0)
      {
        v302 += v305;
      }
    }

    else
    {
      v302 -= fabs(v305);
    }
  }

  else
  {
    v302 = 0;
    v303 = v173;
  }

  v445 = v302;
  if ((v7 & 0x2000) != 0)
  {
    callDurNightWeekday = self->_callDurNightWeekday;
    if (callDurNightWeekday < 0.0)
    {
      callDurNightWeekday = -callDurNightWeekday;
    }

    *v2.i64 = floor(callDurNightWeekday + 0.5);
    v309 = (callDurNightWeekday - *v2.i64) * 1.84467441e19;
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

  if ((v7 & 0x400) != 0)
  {
    callDurNightFri = self->_callDurNightFri;
    if (callDurNightFri < 0.0)
    {
      callDurNightFri = -callDurNightFri;
    }

    *v2.i64 = floor(callDurNightFri + 0.5);
    v313 = (callDurNightFri - *v2.i64) * 1.84467441e19;
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

  v443 = v311;
  v467 = v186;
  v461 = v210;
  if ((v7 & 0x800) != 0)
  {
    callDurNightSat = self->_callDurNightSat;
    if (callDurNightSat < 0.0)
    {
      callDurNightSat = -callDurNightSat;
    }

    *v2.i64 = floor(callDurNightSat + 0.5);
    v317 = (callDurNightSat - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v318.f64[0] = NAN;
    v318.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v318), v3, v2);
    v315 = 2654435761u * *v2.i64;
    if (v317 >= 0.0)
    {
      if (v317 > 0.0)
      {
        v315 += v317;
      }
    }

    else
    {
      v315 -= fabs(v317);
    }
  }

  else
  {
    v315 = 0;
  }

  v319 = v178;
  if ((v7 & 0x1000) != 0)
  {
    callDurNightSun = self->_callDurNightSun;
    if (callDurNightSun < 0.0)
    {
      callDurNightSun = -callDurNightSun;
    }

    *v2.i64 = floor(callDurNightSun + 0.5);
    v322 = (callDurNightSun - *v2.i64) * 1.84467441e19;
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

  v441 = v320;
  if ((v7 & 0x20000000) != 0)
  {
    callLongMorningWeekday = self->_callLongMorningWeekday;
    if (callLongMorningWeekday < 0.0)
    {
      callLongMorningWeekday = -callLongMorningWeekday;
    }

    *v2.i64 = floor(callLongMorningWeekday + 0.5);
    v327 = (callLongMorningWeekday - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v328.f64[0] = NAN;
    v328.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v328), v3, v2);
    v324 = 2654435761u * *v2.i64;
    v325 = v319;
    if (v327 >= 0.0)
    {
      if (v327 > 0.0)
      {
        v324 += v327;
      }
    }

    else
    {
      v324 -= fabs(v327);
    }
  }

  else
  {
    v324 = 0;
    v325 = v319;
  }

  v440 = v324;
  if ((v7 & 0x4000000) != 0)
  {
    callLongMorningFri = self->_callLongMorningFri;
    if (callLongMorningFri < 0.0)
    {
      callLongMorningFri = -callLongMorningFri;
    }

    *v2.i64 = floor(callLongMorningFri + 0.5);
    v331 = (callLongMorningFri - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v332.f64[0] = NAN;
    v332.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v332), v3, v2);
    v329 = 2654435761u * *v2.i64;
    if (v331 >= 0.0)
    {
      if (v331 > 0.0)
      {
        v329 += v331;
      }
    }

    else
    {
      v329 -= fabs(v331);
    }
  }

  else
  {
    v329 = 0;
  }

  v333 = v194;
  if ((v7 & 0x8000000) != 0)
  {
    callLongMorningSat = self->_callLongMorningSat;
    if (callLongMorningSat < 0.0)
    {
      callLongMorningSat = -callLongMorningSat;
    }

    *v2.i64 = floor(callLongMorningSat + 0.5);
    v336 = (callLongMorningSat - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v337.f64[0] = NAN;
    v337.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v337), v3, v2);
    v334 = 2654435761u * *v2.i64;
    if (v336 >= 0.0)
    {
      if (v336 > 0.0)
      {
        v334 += v336;
      }
    }

    else
    {
      v334 -= fabs(v336);
    }
  }

  else
  {
    v334 = 0;
  }

  v438 = v334;
  if ((v7 & 0x10000000) != 0)
  {
    callLongMorningSun = self->_callLongMorningSun;
    if (callLongMorningSun < 0.0)
    {
      callLongMorningSun = -callLongMorningSun;
    }

    *v2.i64 = floor(callLongMorningSun + 0.5);
    v340 = (callLongMorningSun - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v341.f64[0] = NAN;
    v341.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v341), v3, v2);
    v338 = 2654435761u * *v2.i64;
    if (v340 >= 0.0)
    {
      if (v340 > 0.0)
      {
        v338 += v340;
      }
    }

    else
    {
      v338 -= fabs(v340);
    }
  }

  else
  {
    v338 = 0;
  }

  if ((v7 & 0x2000000000) != 0)
  {
    callLongNoonWeekday = self->_callLongNoonWeekday;
    if (callLongNoonWeekday < 0.0)
    {
      callLongNoonWeekday = -callLongNoonWeekday;
    }

    *v2.i64 = floor(callLongNoonWeekday + 0.5);
    v344 = (callLongNoonWeekday - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v345.f64[0] = NAN;
    v345.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v345), v3, v2);
    v342 = 2654435761u * *v2.i64;
    if (v344 >= 0.0)
    {
      if (v344 > 0.0)
      {
        v342 += v344;
      }
    }

    else
    {
      v342 -= fabs(v344);
    }
  }

  else
  {
    v342 = 0;
  }

  v436 = v342;
  if ((v7 & 0x400000000) != 0)
  {
    callLongNoonFri = self->_callLongNoonFri;
    if (callLongNoonFri < 0.0)
    {
      callLongNoonFri = -callLongNoonFri;
    }

    *v2.i64 = floor(callLongNoonFri + 0.5);
    v348 = (callLongNoonFri - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v349.f64[0] = NAN;
    v349.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v349), v3, v2);
    v346 = 2654435761u * *v2.i64;
    if (v348 >= 0.0)
    {
      if (v348 > 0.0)
      {
        v346 += v348;
      }
    }

    else
    {
      v346 -= fabs(v348);
    }
  }

  else
  {
    v346 = 0;
  }

  v350 = v202;
  if ((v7 & 0x800000000) != 0)
  {
    callLongNoonSat = self->_callLongNoonSat;
    if (callLongNoonSat < 0.0)
    {
      callLongNoonSat = -callLongNoonSat;
    }

    *v2.i64 = floor(callLongNoonSat + 0.5);
    v353 = (callLongNoonSat - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v354.f64[0] = NAN;
    v354.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v354), v3, v2);
    v351 = 2654435761u * *v2.i64;
    if (v353 >= 0.0)
    {
      if (v353 > 0.0)
      {
        v351 += v353;
      }
    }

    else
    {
      v351 -= fabs(v353);
    }
  }

  else
  {
    v351 = 0;
  }

  v434 = v351;
  if ((v7 & 0x1000000000) != 0)
  {
    callLongNoonSun = self->_callLongNoonSun;
    if (callLongNoonSun < 0.0)
    {
      callLongNoonSun = -callLongNoonSun;
    }

    *v2.i64 = floor(callLongNoonSun + 0.5);
    v357 = (callLongNoonSun - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v358.f64[0] = NAN;
    v358.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v358), v3, v2);
    v355 = 2654435761u * *v2.i64;
    if (v357 >= 0.0)
    {
      if (v357 > 0.0)
      {
        v355 += v357;
      }
    }

    else
    {
      v355 -= fabs(v357);
    }
  }

  else
  {
    v355 = 0;
  }

  v359 = v226;
  if ((v7 & 0x2000000) != 0)
  {
    callLongEveWeekday = self->_callLongEveWeekday;
    if (callLongEveWeekday < 0.0)
    {
      callLongEveWeekday = -callLongEveWeekday;
    }

    *v2.i64 = floor(callLongEveWeekday + 0.5);
    v362 = (callLongEveWeekday - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v363.f64[0] = NAN;
    v363.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v363), v3, v2);
    v360 = 2654435761u * *v2.i64;
    if (v362 >= 0.0)
    {
      if (v362 > 0.0)
      {
        v360 += v362;
      }
    }

    else
    {
      v360 -= fabs(v362);
    }
  }

  else
  {
    v360 = 0;
  }

  v432 = v360;
  if ((v7 & 0x400000) != 0)
  {
    callLongEveFri = self->_callLongEveFri;
    if (callLongEveFri < 0.0)
    {
      callLongEveFri = -callLongEveFri;
    }

    *v2.i64 = floor(callLongEveFri + 0.5);
    v366 = (callLongEveFri - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v367.f64[0] = NAN;
    v367.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v367), v3, v2);
    v364 = 2654435761u * *v2.i64;
    if (v366 >= 0.0)
    {
      if (v366 > 0.0)
      {
        v364 += v366;
      }
    }

    else
    {
      v364 -= fabs(v366);
    }
  }

  else
  {
    v364 = 0;
  }

  if ((v7 & 0x800000) != 0)
  {
    callLongEveSat = self->_callLongEveSat;
    if (callLongEveSat < 0.0)
    {
      callLongEveSat = -callLongEveSat;
    }

    *v2.i64 = floor(callLongEveSat + 0.5);
    v370 = (callLongEveSat - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v371.f64[0] = NAN;
    v371.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v371), v3, v2);
    v368 = 2654435761u * *v2.i64;
    if (v370 >= 0.0)
    {
      if (v370 > 0.0)
      {
        v368 += v370;
      }
    }

    else
    {
      v368 -= fabs(v370);
    }
  }

  else
  {
    v368 = 0;
  }

  v430 = v368;
  if ((v7 & 0x1000000) != 0)
  {
    callLongEveSun = self->_callLongEveSun;
    if (callLongEveSun < 0.0)
    {
      callLongEveSun = -callLongEveSun;
    }

    *v2.i64 = floor(callLongEveSun + 0.5);
    v374 = (callLongEveSun - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v375.f64[0] = NAN;
    v375.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v375), v3, v2);
    v372 = 2654435761u * *v2.i64;
    if (v374 >= 0.0)
    {
      if (v374 > 0.0)
      {
        v372 += v374;
      }
    }

    else
    {
      v372 -= fabs(v374);
    }
  }

  else
  {
    v372 = 0;
  }

  if ((v7 & 0x200000000) != 0)
  {
    callLongNightWeekday = self->_callLongNightWeekday;
    if (callLongNightWeekday < 0.0)
    {
      callLongNightWeekday = -callLongNightWeekday;
    }

    *v2.i64 = floor(callLongNightWeekday + 0.5);
    v378 = (callLongNightWeekday - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v379.f64[0] = NAN;
    v379.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v379), v3, v2);
    v376 = 2654435761u * *v2.i64;
    if (v378 >= 0.0)
    {
      if (v378 > 0.0)
      {
        v376 += v378;
      }
    }

    else
    {
      v376 -= fabs(v378);
    }
  }

  else
  {
    v376 = 0;
  }

  v428 = v376;
  if ((v7 & 0x40000000) != 0)
  {
    callLongNightFri = self->_callLongNightFri;
    if (callLongNightFri < 0.0)
    {
      callLongNightFri = -callLongNightFri;
    }

    *v2.i64 = floor(callLongNightFri + 0.5);
    v382 = (callLongNightFri - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v383.f64[0] = NAN;
    v383.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v383), v3, v2);
    v380 = 2654435761u * *v2.i64;
    if (v382 >= 0.0)
    {
      if (v382 > 0.0)
      {
        v380 += v382;
      }
    }

    else
    {
      v380 -= fabs(v382);
    }
  }

  else
  {
    v380 = 0;
  }

  if ((v7 & 0x80000000) != 0)
  {
    callLongNightSat = self->_callLongNightSat;
    if (callLongNightSat < 0.0)
    {
      callLongNightSat = -callLongNightSat;
    }

    *v2.i64 = floor(callLongNightSat + 0.5);
    v386 = (callLongNightSat - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v387.f64[0] = NAN;
    v387.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v387), v3, v2);
    v384 = 2654435761u * *v2.i64;
    if (v386 >= 0.0)
    {
      if (v386 > 0.0)
      {
        v384 += v386;
      }
    }

    else
    {
      v384 -= fabs(v386);
    }
  }

  else
  {
    v384 = 0;
  }

  v426 = v384;
  if ((v7 & 0x100000000) != 0)
  {
    callLongNightSun = self->_callLongNightSun;
    if (callLongNightSun < 0.0)
    {
      callLongNightSun = -callLongNightSun;
    }

    *v2.i64 = floor(callLongNightSun + 0.5);
    v390 = (callLongNightSun - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v391.f64[0] = NAN;
    v391.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v391), v3, v2);
    v388 = 2654435761u * *v2.i64;
    if (v390 >= 0.0)
    {
      if (v390 > 0.0)
      {
        v388 += v390;
      }
    }

    else
    {
      v388 -= fabs(v390);
    }
  }

  else
  {
    v388 = 0;
  }

  if ((v7 & 0x200000000000000) != 0)
  {
    callTwoWeeks = self->_callTwoWeeks;
    if (callTwoWeeks < 0.0)
    {
      callTwoWeeks = -callTwoWeeks;
    }

    *v2.i64 = floor(callTwoWeeks + 0.5);
    v394 = (callTwoWeeks - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v395.f64[0] = NAN;
    v395.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v395), v3, v2);
    v392 = 2654435761u * *v2.i64;
    if (v394 >= 0.0)
    {
      if (v394 > 0.0)
      {
        v392 += v394;
      }
    }

    else
    {
      v392 -= fabs(v394);
    }
  }

  else
  {
    v392 = 0;
  }

  v424 = v392;
  v442 = v315;
  v444 = v307;
  if ((v7 & 0x20000000000000) != 0)
  {
    v397 = v499;
    callSixWeeks = self->_callSixWeeks;
    if (callSixWeeks < 0.0)
    {
      callSixWeeks = -callSixWeeks;
    }

    *v2.i64 = floor(callSixWeeks + 0.5);
    v400 = (callSixWeeks - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v401.f64[0] = NAN;
    v401.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v401), v3, v2);
    v398 = 2654435761u * *v2.i64;
    if (v400 >= 0.0)
    {
      v396 = v501;
      if (v400 > 0.0)
      {
        v398 += v400;
      }
    }

    else
    {
      v396 = v501;
      v398 -= fabs(v400);
    }
  }

  else
  {
    v397 = v499;
    v396 = v501;
    v398 = 0;
  }

  v500 = v286;
  v449 = v278;
  if ((v7 & 0x100000000000000) != 0)
  {
    v403 = v503;
    callTwelveWeeks = self->_callTwelveWeeks;
    if (callTwelveWeeks < 0.0)
    {
      callTwelveWeeks = -callTwelveWeeks;
    }

    *v2.i64 = floor(callTwelveWeeks + 0.5);
    v406 = (callTwelveWeeks - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v407.f64[0] = NAN;
    v407.f64[1] = NAN;
    v404 = 2654435761u * *vbslq_s8(vnegq_f64(v407), v3, v2).i64;
    if (v406 >= 0.0)
    {
      v402 = v504;
      if (v406 > 0.0)
      {
        v404 += v406;
      }
    }

    else
    {
      v402 = v504;
      v404 -= fabs(v406);
    }
  }

  else
  {
    v403 = v503;
    v402 = v504;
    v404 = 0;
  }

  v505 = v359;
  v471 = v303;
  v469 = v325;
  v465 = v333;
  v463 = v350;
  v453 = v258;
  v439 = v329;
  v437 = v338;
  v435 = v346;
  v433 = v355;
  v431 = v364;
  v429 = v372;
  v427 = v380;
  v425 = v388;
  v423 = v404;
  if ((v6 & 0x4000000000) != 0)
  {
    v422 = 2654435761 * self->_contactFamilyRelation;
  }

  else
  {
    v422 = 0;
  }

  v408 = [(NSString *)self->_contactRelation hash];
  v409 = *(v492 + 1);
  if ((v409 & 0x2000000000) != 0)
  {
    v410 = 2654435761 * self->_contactFamilyName;
  }

  else
  {
    v410 = 0;
  }

  if ((v409 & 0x800000000000) != 0)
  {
    v411 = 2654435761 * self->_contactParent;
  }

  else
  {
    v411 = 0;
  }

  if ((v409 & 0x800000000) != 0)
  {
    v412 = 2654435761 * self->_contactEmergency;
  }

  else
  {
    v412 = 0;
  }

  if ((v409 & 0x1000000000) != 0)
  {
    v413 = 2654435761 * self->_contactEmergencyFamily;
  }

  else
  {
    v413 = 0;
  }

  if ((v409 & 0x200000000000) != 0)
  {
    v414 = 2654435761 * self->_contactInHome;
    if ((v409 & 0x400000000000) != 0)
    {
LABEL_811:
      v415 = 2654435761 * self->_contactInPhotos;
      if ((v409 & 0x10000000000) != 0)
      {
        goto LABEL_812;
      }

      goto LABEL_819;
    }
  }

  else
  {
    v414 = 0;
    if ((v409 & 0x400000000000) != 0)
    {
      goto LABEL_811;
    }
  }

  v415 = 0;
  if ((v409 & 0x10000000000) != 0)
  {
LABEL_812:
    v416 = 2654435761 * self->_contactInAirDrop;
    if ((v409 & 0x20000000000) != 0)
    {
      goto LABEL_813;
    }

    goto LABEL_820;
  }

LABEL_819:
  v416 = 0;
  if ((v409 & 0x20000000000) != 0)
  {
LABEL_813:
    v417 = 2654435761 * self->_contactInAirDropAtHome;
    if ((v409 & 0x80000000000) != 0)
    {
      goto LABEL_814;
    }

    goto LABEL_821;
  }

LABEL_820:
  v417 = 0;
  if ((v409 & 0x80000000000) != 0)
  {
LABEL_814:
    v418 = 2654435761 * self->_contactInFMFFollowingMe;
    if ((v409 & 0x100000000000) != 0)
    {
      goto LABEL_815;
    }

LABEL_822:
    v419 = 0;
    if ((v409 & 0x40000000000) != 0)
    {
      goto LABEL_816;
    }

LABEL_823:
    v420 = 0;
    return v481 ^ v493 ^ v483 ^ v482 ^ v498 ^ v485 ^ v486 ^ v487 ^ v488 ^ v489 ^ v491 ^ v490 ^ v480 ^ v508 ^ v507 ^ v517 ^ v516 ^ v515 ^ v506 ^ v402 ^ v403 ^ v484 ^ v502 ^ v396 ^ v397 ^ v514 ^ v497 ^ v479 ^ v496 ^ v513 ^ v495 ^ v512 ^ v511 ^ v494 ^ v510 ^ v478 ^ v509 ^ v477 ^ v476 ^ v475 ^ v474 ^ v473 ^ v472 ^ v471 ^ v470 ^ v469 ^ v468 ^ v467 ^ v466 ^ v465 ^ v464 ^ v463 ^ v462 ^ v461 ^ v460 ^ v459 ^ v458 ^ v505 ^ v457 ^ v234 ^ v456 ^ v242 ^ v455 ^ v250 ^ v454 ^ v453 ^ v452 ^ v266 ^ v451 ^ v450 ^ v449 ^ v448 ^ v500 ^ v447 ^ v294 ^ v446 ^ v445 ^ v444 ^ v443 ^ v442 ^ v441 ^ v440 ^ v439 ^ v438 ^ v437 ^ v436 ^ v435 ^ v434 ^ v433 ^ v432 ^ v431 ^ v430 ^ v429 ^ v428 ^ v427 ^ v426 ^ v425 ^ v424 ^ v398 ^ v423 ^ v422 ^ v408 ^ v410 ^ v411 ^ v412 ^ v413 ^ v414 ^ v415 ^ v416 ^ v417 ^ v418 ^ v419 ^ v420;
  }

LABEL_821:
  v418 = 0;
  if ((v409 & 0x100000000000) == 0)
  {
    goto LABEL_822;
  }

LABEL_815:
  v419 = 2654435761 * self->_contactInFMFSharingWithMe;
  if ((v409 & 0x40000000000) == 0)
  {
    goto LABEL_823;
  }

LABEL_816:
  v420 = 2654435761 * self->_contactInFMFFavorite;
  return v481 ^ v493 ^ v483 ^ v482 ^ v498 ^ v485 ^ v486 ^ v487 ^ v488 ^ v489 ^ v491 ^ v490 ^ v480 ^ v508 ^ v507 ^ v517 ^ v516 ^ v515 ^ v506 ^ v402 ^ v403 ^ v484 ^ v502 ^ v396 ^ v397 ^ v514 ^ v497 ^ v479 ^ v496 ^ v513 ^ v495 ^ v512 ^ v511 ^ v494 ^ v510 ^ v478 ^ v509 ^ v477 ^ v476 ^ v475 ^ v474 ^ v473 ^ v472 ^ v471 ^ v470 ^ v469 ^ v468 ^ v467 ^ v466 ^ v465 ^ v464 ^ v463 ^ v462 ^ v461 ^ v460 ^ v459 ^ v458 ^ v505 ^ v457 ^ v234 ^ v456 ^ v242 ^ v455 ^ v250 ^ v454 ^ v453 ^ v452 ^ v266 ^ v451 ^ v450 ^ v449 ^ v448 ^ v500 ^ v447 ^ v294 ^ v446 ^ v445 ^ v444 ^ v443 ^ v442 ^ v441 ^ v440 ^ v439 ^ v438 ^ v437 ^ v436 ^ v435 ^ v434 ^ v433 ^ v432 ^ v431 ^ v430 ^ v429 ^ v428 ^ v427 ^ v426 ^ v425 ^ v424 ^ v398 ^ v423 ^ v422 ^ v408 ^ v410 ^ v411 ^ v412 ^ v413 ^ v414 ^ v415 ^ v416 ^ v417 ^ v418 ^ v419 ^ v420;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = (fromCopy + 856);
  if ((fromCopy[865] & 0x20) != 0)
  {
    self->_firstPartyMsgTotal = *(fromCopy + 78);
    *(&self->_has + 1) |= 0x2000uLL;
  }

  if ((fromCopy[863] & 4) != 0)
  {
    self->_firstPartyMsgDayRatio = *(fromCopy + 59);
    *&self->_has |= 0x400000000000000uLL;
  }

  v6 = *(fromCopy + 108);
  if ((v6 & 0x800) != 0)
  {
    self->_firstPartyMsgOutgoingRatio = *(fromCopy + 76);
    *(&self->_has + 1) |= 0x800uLL;
    v6 = *(fromCopy + 108);
  }

  if ((v6 & 4) != 0)
  {
    self->_firstPartyMsgMorningWeekday = *(fromCopy + 67);
    *(&self->_has + 1) |= 4uLL;
  }

  if (*v5 < 0)
  {
    self->_firstPartyMsgMorningFri = *(fromCopy + 64);
    *&self->_has |= 0x8000000000000000;
  }

  v7 = *(fromCopy + 108);
  if (v7)
  {
    self->_firstPartyMsgMorningSat = *(fromCopy + 65);
    *(&self->_has + 1) |= 1uLL;
    v7 = *(fromCopy + 108);
    if ((v7 & 2) == 0)
    {
LABEL_13:
      if ((v7 & 0x400) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_134;
    }
  }

  else if ((v7 & 2) == 0)
  {
    goto LABEL_13;
  }

  self->_firstPartyMsgMorningSun = *(fromCopy + 66);
  *(&self->_has + 1) |= 2uLL;
  v7 = *(fromCopy + 108);
  if ((v7 & 0x400) == 0)
  {
LABEL_14:
    if ((v7 & 0x80) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_135;
  }

LABEL_134:
  self->_firstPartyMsgNoonWeekday = *(fromCopy + 75);
  *(&self->_has + 1) |= 0x400uLL;
  v7 = *(fromCopy + 108);
  if ((v7 & 0x80) == 0)
  {
LABEL_15:
    if ((v7 & 0x100) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_136;
  }

LABEL_135:
  self->_firstPartyMsgNoonFri = *(fromCopy + 72);
  *(&self->_has + 1) |= 0x80uLL;
  v7 = *(fromCopy + 108);
  if ((v7 & 0x100) == 0)
  {
LABEL_16:
    if ((v7 & 0x200) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_136:
  self->_firstPartyMsgNoonSat = *(fromCopy + 73);
  *(&self->_has + 1) |= 0x100uLL;
  if ((*(fromCopy + 108) & 0x200) != 0)
  {
LABEL_17:
    self->_firstPartyMsgNoonSun = *(fromCopy + 74);
    *(&self->_has + 1) |= 0x200uLL;
  }

LABEL_18:
  v8 = *v5;
  if ((*v5 & 0x4000000000000000) != 0)
  {
    self->_firstPartyMsgEveWeekday = *(fromCopy + 63);
    *&self->_has |= 0x4000000000000000uLL;
    v8 = *(fromCopy + 107);
    if ((v8 & 0x800000000000000) == 0)
    {
LABEL_20:
      if ((v8 & 0x1000000000000000) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_140;
    }
  }

  else if ((v8 & 0x800000000000000) == 0)
  {
    goto LABEL_20;
  }

  self->_firstPartyMsgEveFri = *(fromCopy + 60);
  *&self->_has |= 0x800000000000000uLL;
  v8 = *(fromCopy + 107);
  if ((v8 & 0x1000000000000000) == 0)
  {
LABEL_21:
    if ((v8 & 0x2000000000000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_140:
  self->_firstPartyMsgEveSat = *(fromCopy + 61);
  *&self->_has |= 0x1000000000000000uLL;
  if ((*(fromCopy + 107) & 0x2000000000000000) != 0)
  {
LABEL_22:
    self->_firstPartyMsgEveSun = *(fromCopy + 62);
    *&self->_has |= 0x2000000000000000uLL;
  }

LABEL_23:
  v9 = *(fromCopy + 108);
  if ((v9 & 0x40) != 0)
  {
    self->_firstPartyMsgNightWeekday = *(fromCopy + 71);
    *(&self->_has + 1) |= 0x40uLL;
    v9 = *(fromCopy + 108);
    if ((v9 & 8) == 0)
    {
LABEL_25:
      if ((v9 & 0x10) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_144;
    }
  }

  else if ((v9 & 8) == 0)
  {
    goto LABEL_25;
  }

  self->_firstPartyMsgNightFri = *(fromCopy + 68);
  *(&self->_has + 1) |= 8uLL;
  v9 = *(fromCopy + 108);
  if ((v9 & 0x10) == 0)
  {
LABEL_26:
    if ((v9 & 0x20) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_145;
  }

LABEL_144:
  self->_firstPartyMsgNightSat = *(fromCopy + 69);
  *(&self->_has + 1) |= 0x10uLL;
  v9 = *(fromCopy + 108);
  if ((v9 & 0x20) == 0)
  {
LABEL_27:
    if ((v9 & 0x4000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_146;
  }

LABEL_145:
  self->_firstPartyMsgNightSun = *(fromCopy + 70);
  *(&self->_has + 1) |= 0x20uLL;
  v9 = *(fromCopy + 108);
  if ((v9 & 0x4000) == 0)
  {
LABEL_28:
    if ((v9 & 0x1000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_147;
  }

LABEL_146:
  self->_firstPartyMsgTwoWeeks = *(fromCopy + 79);
  *(&self->_has + 1) |= 0x4000uLL;
  v9 = *(fromCopy + 108);
  if ((v9 & 0x1000) == 0)
  {
LABEL_29:
    if ((v9 & 0x100000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_148;
  }

LABEL_147:
  self->_firstPartyMsgSixWeeks = *(fromCopy + 77);
  *(&self->_has + 1) |= 0x1000uLL;
  v9 = *(fromCopy + 108);
  if ((v9 & 0x100000000) == 0)
  {
LABEL_30:
    if ((v9 & 0x8000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_149;
  }

LABEL_148:
  self->_thirdPartyMsgTotal = *(fromCopy + 97);
  *(&self->_has + 1) |= 0x100000000uLL;
  v9 = *(fromCopy + 108);
  if ((v9 & 0x8000) == 0)
  {
LABEL_31:
    if ((v9 & 0x800000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_150;
  }

LABEL_149:
  self->_thirdPartyMsgDayRatio = *(fromCopy + 80);
  *(&self->_has + 1) |= 0x8000uLL;
  v9 = *(fromCopy + 108);
  if ((v9 & 0x800000) == 0)
  {
LABEL_32:
    if ((v9 & 0x100000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_151;
  }

LABEL_150:
  self->_thirdPartyMsgMorningWeekday = *(fromCopy + 88);
  *(&self->_has + 1) |= 0x800000uLL;
  v9 = *(fromCopy + 108);
  if ((v9 & 0x100000) == 0)
  {
LABEL_33:
    if ((v9 & 0x200000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_152;
  }

LABEL_151:
  self->_thirdPartyMsgMorningFri = *(fromCopy + 85);
  *(&self->_has + 1) |= 0x100000uLL;
  v9 = *(fromCopy + 108);
  if ((v9 & 0x200000) == 0)
  {
LABEL_34:
    if ((v9 & 0x400000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_153;
  }

LABEL_152:
  self->_thirdPartyMsgMorningSat = *(fromCopy + 86);
  *(&self->_has + 1) |= 0x200000uLL;
  v9 = *(fromCopy + 108);
  if ((v9 & 0x400000) == 0)
  {
LABEL_35:
    if ((v9 & 0x80000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_154;
  }

LABEL_153:
  self->_thirdPartyMsgMorningSun = *(fromCopy + 87);
  *(&self->_has + 1) |= 0x400000uLL;
  v9 = *(fromCopy + 108);
  if ((v9 & 0x80000000) == 0)
  {
LABEL_36:
    if ((v9 & 0x10000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_155;
  }

LABEL_154:
  self->_thirdPartyMsgNoonWeekday = *(fromCopy + 96);
  *(&self->_has + 1) |= 0x80000000uLL;
  v9 = *(fromCopy + 108);
  if ((v9 & 0x10000000) == 0)
  {
LABEL_37:
    if ((v9 & 0x20000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_156;
  }

LABEL_155:
  self->_thirdPartyMsgNoonFri = *(fromCopy + 93);
  *(&self->_has + 1) |= 0x10000000uLL;
  v9 = *(fromCopy + 108);
  if ((v9 & 0x20000000) == 0)
  {
LABEL_38:
    if ((v9 & 0x40000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_157;
  }

LABEL_156:
  self->_thirdPartyMsgNoonSat = *(fromCopy + 94);
  *(&self->_has + 1) |= 0x20000000uLL;
  v9 = *(fromCopy + 108);
  if ((v9 & 0x40000000) == 0)
  {
LABEL_39:
    if ((v9 & 0x80000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_158;
  }

LABEL_157:
  self->_thirdPartyMsgNoonSun = *(fromCopy + 95);
  *(&self->_has + 1) |= 0x40000000uLL;
  v9 = *(fromCopy + 108);
  if ((v9 & 0x80000) == 0)
  {
LABEL_40:
    if ((v9 & 0x10000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_159;
  }

LABEL_158:
  self->_thirdPartyMsgEveWeekday = *(fromCopy + 84);
  *(&self->_has + 1) |= 0x80000uLL;
  v9 = *(fromCopy + 108);
  if ((v9 & 0x10000) == 0)
  {
LABEL_41:
    if ((v9 & 0x20000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_160;
  }

LABEL_159:
  self->_thirdPartyMsgEveFri = *(fromCopy + 81);
  *(&self->_has + 1) |= 0x10000uLL;
  v9 = *(fromCopy + 108);
  if ((v9 & 0x20000) == 0)
  {
LABEL_42:
    if ((v9 & 0x40000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_161;
  }

LABEL_160:
  self->_thirdPartyMsgEveSat = *(fromCopy + 82);
  *(&self->_has + 1) |= 0x20000uLL;
  v9 = *(fromCopy + 108);
  if ((v9 & 0x40000) == 0)
  {
LABEL_43:
    if ((v9 & 0x8000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_162;
  }

LABEL_161:
  self->_thirdPartyMsgEveSun = *(fromCopy + 83);
  *(&self->_has + 1) |= 0x40000uLL;
  v9 = *(fromCopy + 108);
  if ((v9 & 0x8000000) == 0)
  {
LABEL_44:
    if ((v9 & 0x1000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_163;
  }

LABEL_162:
  self->_thirdPartyMsgNightWeekday = *(fromCopy + 92);
  *(&self->_has + 1) |= 0x8000000uLL;
  v9 = *(fromCopy + 108);
  if ((v9 & 0x1000000) == 0)
  {
LABEL_45:
    if ((v9 & 0x2000000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_164;
  }

LABEL_163:
  self->_thirdPartyMsgNightFri = *(fromCopy + 89);
  *(&self->_has + 1) |= 0x1000000uLL;
  v9 = *(fromCopy + 108);
  if ((v9 & 0x2000000) == 0)
  {
LABEL_46:
    if ((v9 & 0x4000000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_165;
  }

LABEL_164:
  self->_thirdPartyMsgNightSat = *(fromCopy + 90);
  *(&self->_has + 1) |= 0x2000000uLL;
  v9 = *(fromCopy + 108);
  if ((v9 & 0x4000000) == 0)
  {
LABEL_47:
    if ((v9 & 0x200000000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_48;
  }

LABEL_165:
  self->_thirdPartyMsgNightSun = *(fromCopy + 91);
  *(&self->_has + 1) |= 0x4000000uLL;
  if ((*(fromCopy + 108) & 0x200000000) != 0)
  {
LABEL_48:
    self->_thirdPartyMsgTwoWeeks = *(fromCopy + 98);
    *(&self->_has + 1) |= 0x200000000uLL;
  }

LABEL_49:
  if ((fromCopy[862] & 0x40) != 0)
  {
    self->_callTotal = *(fromCopy + 55);
    *&self->_has |= 0x40000000000000uLL;
  }

  v10 = *(fromCopy + 108);
  if ((v10 & 0x400000000) != 0)
  {
    self->_callBirthday = *(fromCopy + 198);
    *(&self->_has + 1) |= 0x400000000uLL;
    v10 = *(fromCopy + 108);
  }

  if ((v10 & 0x8000000000) != 0)
  {
    self->_contactFavorite = *(fromCopy + 203);
    *(&self->_has + 1) |= 0x8000000000uLL;
  }

  v11 = *v5;
  if ((*v5 & 0x80000000000000) != 0)
  {
    self->_callTotalDur = *(fromCopy + 56);
    *&self->_has |= 0x80000000000000uLL;
    v11 = *(fromCopy + 107);
    if ((v11 & 2) == 0)
    {
LABEL_57:
      if ((v11 & 0x4000000000) == 0)
      {
        goto LABEL_58;
      }

      goto LABEL_169;
    }
  }

  else if ((v11 & 2) == 0)
  {
    goto LABEL_57;
  }

  self->_callDayRatio = *(fromCopy + 2);
  *&self->_has |= 2uLL;
  v11 = *(fromCopy + 107);
  if ((v11 & 0x4000000000) == 0)
  {
LABEL_58:
    if ((v11 & 0x10000000000000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_170;
  }

LABEL_169:
  self->_callLongRatio = *(fromCopy + 39);
  *&self->_has |= 0x4000000000uLL;
  v11 = *(fromCopy + 107);
  if ((v11 & 0x10000000000000) == 0)
  {
LABEL_59:
    if ((v11 & 1) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_171;
  }

LABEL_170:
  self->_callOutgoingRatio = *(fromCopy + 53);
  *&self->_has |= 0x10000000000000uLL;
  v11 = *(fromCopy + 107);
  if ((v11 & 1) == 0)
  {
LABEL_60:
    if ((v11 & 0x8000000000) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_172;
  }

LABEL_171:
  self->_callAvgDur = *(fromCopy + 1);
  *&self->_has |= 1uLL;
  v11 = *(fromCopy + 107);
  if ((v11 & 0x8000000000) == 0)
  {
LABEL_61:
    if ((v11 & 0x80000000000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_173;
  }

LABEL_172:
  self->_callMaxDur = *(fromCopy + 40);
  *&self->_has |= 0x8000000000uLL;
  v11 = *(fromCopy + 107);
  if ((v11 & 0x80000000000) == 0)
  {
LABEL_62:
    if ((v11 & 0x10000000000) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_174;
  }

LABEL_173:
  self->_callMorningWeekday = *(fromCopy + 44);
  *&self->_has |= 0x80000000000uLL;
  v11 = *(fromCopy + 107);
  if ((v11 & 0x10000000000) == 0)
  {
LABEL_63:
    if ((v11 & 0x20000000000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_175;
  }

LABEL_174:
  self->_callMorningFri = *(fromCopy + 41);
  *&self->_has |= 0x10000000000uLL;
  v11 = *(fromCopy + 107);
  if ((v11 & 0x20000000000) == 0)
  {
LABEL_64:
    if ((v11 & 0x40000000000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_176;
  }

LABEL_175:
  self->_callMorningSat = *(fromCopy + 42);
  *&self->_has |= 0x20000000000uLL;
  v11 = *(fromCopy + 107);
  if ((v11 & 0x40000000000) == 0)
  {
LABEL_65:
    if ((v11 & 0x8000000000000) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_177;
  }

LABEL_176:
  self->_callMorningSun = *(fromCopy + 43);
  *&self->_has |= 0x40000000000uLL;
  v11 = *(fromCopy + 107);
  if ((v11 & 0x8000000000000) == 0)
  {
LABEL_66:
    if ((v11 & 0x1000000000000) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_178;
  }

LABEL_177:
  self->_callNoonWeekday = *(fromCopy + 52);
  *&self->_has |= 0x8000000000000uLL;
  v11 = *(fromCopy + 107);
  if ((v11 & 0x1000000000000) == 0)
  {
LABEL_67:
    if ((v11 & 0x2000000000000) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_179;
  }

LABEL_178:
  self->_callNoonFri = *(fromCopy + 49);
  *&self->_has |= 0x1000000000000uLL;
  v11 = *(fromCopy + 107);
  if ((v11 & 0x2000000000000) == 0)
  {
LABEL_68:
    if ((v11 & 0x4000000000000) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_180;
  }

LABEL_179:
  self->_callNoonSat = *(fromCopy + 50);
  *&self->_has |= 0x2000000000000uLL;
  v11 = *(fromCopy + 107);
  if ((v11 & 0x4000000000000) == 0)
  {
LABEL_69:
    if ((v11 & 0x200000) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_181;
  }

LABEL_180:
  self->_callNoonSun = *(fromCopy + 51);
  *&self->_has |= 0x4000000000000uLL;
  v11 = *(fromCopy + 107);
  if ((v11 & 0x200000) == 0)
  {
LABEL_70:
    if ((v11 & 0x40000) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_182;
  }

LABEL_181:
  self->_callEveWeekday = *(fromCopy + 22);
  *&self->_has |= 0x200000uLL;
  v11 = *(fromCopy + 107);
  if ((v11 & 0x40000) == 0)
  {
LABEL_71:
    if ((v11 & 0x80000) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_183;
  }

LABEL_182:
  self->_callEveFri = *(fromCopy + 19);
  *&self->_has |= 0x40000uLL;
  v11 = *(fromCopy + 107);
  if ((v11 & 0x80000) == 0)
  {
LABEL_72:
    if ((v11 & 0x100000) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_184;
  }

LABEL_183:
  self->_callEveSat = *(fromCopy + 20);
  *&self->_has |= 0x80000uLL;
  v11 = *(fromCopy + 107);
  if ((v11 & 0x100000) == 0)
  {
LABEL_73:
    if ((v11 & 0x800000000000) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_185;
  }

LABEL_184:
  self->_callEveSun = *(fromCopy + 21);
  *&self->_has |= 0x100000uLL;
  v11 = *(fromCopy + 107);
  if ((v11 & 0x800000000000) == 0)
  {
LABEL_74:
    if ((v11 & 0x100000000000) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_186;
  }

LABEL_185:
  self->_callNightWeekday = *(fromCopy + 48);
  *&self->_has |= 0x800000000000uLL;
  v11 = *(fromCopy + 107);
  if ((v11 & 0x100000000000) == 0)
  {
LABEL_75:
    if ((v11 & 0x200000000000) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_187;
  }

LABEL_186:
  self->_callNightFri = *(fromCopy + 45);
  *&self->_has |= 0x100000000000uLL;
  v11 = *(fromCopy + 107);
  if ((v11 & 0x200000000000) == 0)
  {
LABEL_76:
    if ((v11 & 0x400000000000) == 0)
    {
      goto LABEL_77;
    }

    goto LABEL_188;
  }

LABEL_187:
  self->_callNightSat = *(fromCopy + 46);
  *&self->_has |= 0x200000000000uLL;
  v11 = *(fromCopy + 107);
  if ((v11 & 0x400000000000) == 0)
  {
LABEL_77:
    if ((v11 & 0x200) == 0)
    {
      goto LABEL_78;
    }

    goto LABEL_189;
  }

LABEL_188:
  self->_callNightSun = *(fromCopy + 47);
  *&self->_has |= 0x400000000000uLL;
  v11 = *(fromCopy + 107);
  if ((v11 & 0x200) == 0)
  {
LABEL_78:
    if ((v11 & 0x40) == 0)
    {
      goto LABEL_79;
    }

    goto LABEL_190;
  }

LABEL_189:
  self->_callDurMorningWeekday = *(fromCopy + 10);
  *&self->_has |= 0x200uLL;
  v11 = *(fromCopy + 107);
  if ((v11 & 0x40) == 0)
  {
LABEL_79:
    if ((v11 & 0x80) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_191;
  }

LABEL_190:
  self->_callDurMorningFri = *(fromCopy + 7);
  *&self->_has |= 0x40uLL;
  v11 = *(fromCopy + 107);
  if ((v11 & 0x80) == 0)
  {
LABEL_80:
    if ((v11 & 0x100) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_192;
  }

LABEL_191:
  self->_callDurMorningSat = *(fromCopy + 8);
  *&self->_has |= 0x80uLL;
  v11 = *(fromCopy + 107);
  if ((v11 & 0x100) == 0)
  {
LABEL_81:
    if ((v11 & 0x20000) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_193;
  }

LABEL_192:
  self->_callDurMorningSun = *(fromCopy + 9);
  *&self->_has |= 0x100uLL;
  v11 = *(fromCopy + 107);
  if ((v11 & 0x20000) == 0)
  {
LABEL_82:
    if ((v11 & 0x4000) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_194;
  }

LABEL_193:
  self->_callDurNoonWeekday = *(fromCopy + 18);
  *&self->_has |= 0x20000uLL;
  v11 = *(fromCopy + 107);
  if ((v11 & 0x4000) == 0)
  {
LABEL_83:
    if ((v11 & 0x8000) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_195;
  }

LABEL_194:
  self->_callDurNoonFri = *(fromCopy + 15);
  *&self->_has |= 0x4000uLL;
  v11 = *(fromCopy + 107);
  if ((v11 & 0x8000) == 0)
  {
LABEL_84:
    if ((v11 & 0x10000) == 0)
    {
      goto LABEL_85;
    }

    goto LABEL_196;
  }

LABEL_195:
  self->_callDurNoonSat = *(fromCopy + 16);
  *&self->_has |= 0x8000uLL;
  v11 = *(fromCopy + 107);
  if ((v11 & 0x10000) == 0)
  {
LABEL_85:
    if ((v11 & 0x20) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_197;
  }

LABEL_196:
  self->_callDurNoonSun = *(fromCopy + 17);
  *&self->_has |= 0x10000uLL;
  v11 = *(fromCopy + 107);
  if ((v11 & 0x20) == 0)
  {
LABEL_86:
    if ((v11 & 4) == 0)
    {
      goto LABEL_87;
    }

    goto LABEL_198;
  }

LABEL_197:
  self->_callDurEveWeekday = *(fromCopy + 6);
  *&self->_has |= 0x20uLL;
  v11 = *(fromCopy + 107);
  if ((v11 & 4) == 0)
  {
LABEL_87:
    if ((v11 & 8) == 0)
    {
      goto LABEL_88;
    }

    goto LABEL_199;
  }

LABEL_198:
  self->_callDurEveFri = *(fromCopy + 3);
  *&self->_has |= 4uLL;
  v11 = *(fromCopy + 107);
  if ((v11 & 8) == 0)
  {
LABEL_88:
    if ((v11 & 0x10) == 0)
    {
      goto LABEL_89;
    }

    goto LABEL_200;
  }

LABEL_199:
  self->_callDurEveSat = *(fromCopy + 4);
  *&self->_has |= 8uLL;
  v11 = *(fromCopy + 107);
  if ((v11 & 0x10) == 0)
  {
LABEL_89:
    if ((v11 & 0x2000) == 0)
    {
      goto LABEL_90;
    }

    goto LABEL_201;
  }

LABEL_200:
  self->_callDurEveSun = *(fromCopy + 5);
  *&self->_has |= 0x10uLL;
  v11 = *(fromCopy + 107);
  if ((v11 & 0x2000) == 0)
  {
LABEL_90:
    if ((v11 & 0x400) == 0)
    {
      goto LABEL_91;
    }

    goto LABEL_202;
  }

LABEL_201:
  self->_callDurNightWeekday = *(fromCopy + 14);
  *&self->_has |= 0x2000uLL;
  v11 = *(fromCopy + 107);
  if ((v11 & 0x400) == 0)
  {
LABEL_91:
    if ((v11 & 0x800) == 0)
    {
      goto LABEL_92;
    }

    goto LABEL_203;
  }

LABEL_202:
  self->_callDurNightFri = *(fromCopy + 11);
  *&self->_has |= 0x400uLL;
  v11 = *(fromCopy + 107);
  if ((v11 & 0x800) == 0)
  {
LABEL_92:
    if ((v11 & 0x1000) == 0)
    {
      goto LABEL_93;
    }

    goto LABEL_204;
  }

LABEL_203:
  self->_callDurNightSat = *(fromCopy + 12);
  *&self->_has |= 0x800uLL;
  v11 = *(fromCopy + 107);
  if ((v11 & 0x1000) == 0)
  {
LABEL_93:
    if ((v11 & 0x20000000) == 0)
    {
      goto LABEL_94;
    }

    goto LABEL_205;
  }

LABEL_204:
  self->_callDurNightSun = *(fromCopy + 13);
  *&self->_has |= 0x1000uLL;
  v11 = *(fromCopy + 107);
  if ((v11 & 0x20000000) == 0)
  {
LABEL_94:
    if ((v11 & 0x4000000) == 0)
    {
      goto LABEL_95;
    }

    goto LABEL_206;
  }

LABEL_205:
  self->_callLongMorningWeekday = *(fromCopy + 30);
  *&self->_has |= 0x20000000uLL;
  v11 = *(fromCopy + 107);
  if ((v11 & 0x4000000) == 0)
  {
LABEL_95:
    if ((v11 & 0x8000000) == 0)
    {
      goto LABEL_96;
    }

    goto LABEL_207;
  }

LABEL_206:
  self->_callLongMorningFri = *(fromCopy + 27);
  *&self->_has |= 0x4000000uLL;
  v11 = *(fromCopy + 107);
  if ((v11 & 0x8000000) == 0)
  {
LABEL_96:
    if ((v11 & 0x10000000) == 0)
    {
      goto LABEL_97;
    }

    goto LABEL_208;
  }

LABEL_207:
  self->_callLongMorningSat = *(fromCopy + 28);
  *&self->_has |= 0x8000000uLL;
  v11 = *(fromCopy + 107);
  if ((v11 & 0x10000000) == 0)
  {
LABEL_97:
    if ((v11 & 0x2000000000) == 0)
    {
      goto LABEL_98;
    }

    goto LABEL_209;
  }

LABEL_208:
  self->_callLongMorningSun = *(fromCopy + 29);
  *&self->_has |= 0x10000000uLL;
  v11 = *(fromCopy + 107);
  if ((v11 & 0x2000000000) == 0)
  {
LABEL_98:
    if ((v11 & 0x400000000) == 0)
    {
      goto LABEL_99;
    }

    goto LABEL_210;
  }

LABEL_209:
  self->_callLongNoonWeekday = *(fromCopy + 38);
  *&self->_has |= 0x2000000000uLL;
  v11 = *(fromCopy + 107);
  if ((v11 & 0x400000000) == 0)
  {
LABEL_99:
    if ((v11 & 0x800000000) == 0)
    {
      goto LABEL_100;
    }

    goto LABEL_211;
  }

LABEL_210:
  self->_callLongNoonFri = *(fromCopy + 35);
  *&self->_has |= 0x400000000uLL;
  v11 = *(fromCopy + 107);
  if ((v11 & 0x800000000) == 0)
  {
LABEL_100:
    if ((v11 & 0x1000000000) == 0)
    {
      goto LABEL_101;
    }

    goto LABEL_212;
  }

LABEL_211:
  self->_callLongNoonSat = *(fromCopy + 36);
  *&self->_has |= 0x800000000uLL;
  v11 = *(fromCopy + 107);
  if ((v11 & 0x1000000000) == 0)
  {
LABEL_101:
    if ((v11 & 0x2000000) == 0)
    {
      goto LABEL_102;
    }

    goto LABEL_213;
  }

LABEL_212:
  self->_callLongNoonSun = *(fromCopy + 37);
  *&self->_has |= 0x1000000000uLL;
  v11 = *(fromCopy + 107);
  if ((v11 & 0x2000000) == 0)
  {
LABEL_102:
    if ((v11 & 0x400000) == 0)
    {
      goto LABEL_103;
    }

    goto LABEL_214;
  }

LABEL_213:
  self->_callLongEveWeekday = *(fromCopy + 26);
  *&self->_has |= 0x2000000uLL;
  v11 = *(fromCopy + 107);
  if ((v11 & 0x400000) == 0)
  {
LABEL_103:
    if ((v11 & 0x800000) == 0)
    {
      goto LABEL_104;
    }

    goto LABEL_215;
  }

LABEL_214:
  self->_callLongEveFri = *(fromCopy + 23);
  *&self->_has |= 0x400000uLL;
  v11 = *(fromCopy + 107);
  if ((v11 & 0x800000) == 0)
  {
LABEL_104:
    if ((v11 & 0x1000000) == 0)
    {
      goto LABEL_105;
    }

    goto LABEL_216;
  }

LABEL_215:
  self->_callLongEveSat = *(fromCopy + 24);
  *&self->_has |= 0x800000uLL;
  v11 = *(fromCopy + 107);
  if ((v11 & 0x1000000) == 0)
  {
LABEL_105:
    if ((v11 & 0x200000000) == 0)
    {
      goto LABEL_106;
    }

    goto LABEL_217;
  }

LABEL_216:
  self->_callLongEveSun = *(fromCopy + 25);
  *&self->_has |= 0x1000000uLL;
  v11 = *(fromCopy + 107);
  if ((v11 & 0x200000000) == 0)
  {
LABEL_106:
    if ((v11 & 0x40000000) == 0)
    {
      goto LABEL_107;
    }

    goto LABEL_218;
  }

LABEL_217:
  self->_callLongNightWeekday = *(fromCopy + 34);
  *&self->_has |= 0x200000000uLL;
  v11 = *(fromCopy + 107);
  if ((v11 & 0x40000000) == 0)
  {
LABEL_107:
    if ((v11 & 0x80000000) == 0)
    {
      goto LABEL_108;
    }

    goto LABEL_219;
  }

LABEL_218:
  self->_callLongNightFri = *(fromCopy + 31);
  *&self->_has |= 0x40000000uLL;
  v11 = *(fromCopy + 107);
  if ((v11 & 0x80000000) == 0)
  {
LABEL_108:
    if ((v11 & 0x100000000) == 0)
    {
      goto LABEL_109;
    }

    goto LABEL_220;
  }

LABEL_219:
  self->_callLongNightSat = *(fromCopy + 32);
  *&self->_has |= 0x80000000uLL;
  v11 = *(fromCopy + 107);
  if ((v11 & 0x100000000) == 0)
  {
LABEL_109:
    if ((v11 & 0x200000000000000) == 0)
    {
      goto LABEL_110;
    }

    goto LABEL_221;
  }

LABEL_220:
  self->_callLongNightSun = *(fromCopy + 33);
  *&self->_has |= 0x100000000uLL;
  v11 = *(fromCopy + 107);
  if ((v11 & 0x200000000000000) == 0)
  {
LABEL_110:
    if ((v11 & 0x20000000000000) == 0)
    {
      goto LABEL_111;
    }

    goto LABEL_222;
  }

LABEL_221:
  self->_callTwoWeeks = *(fromCopy + 58);
  *&self->_has |= 0x200000000000000uLL;
  v11 = *(fromCopy + 107);
  if ((v11 & 0x20000000000000) == 0)
  {
LABEL_111:
    if ((v11 & 0x100000000000000) == 0)
    {
      goto LABEL_113;
    }

    goto LABEL_112;
  }

LABEL_222:
  self->_callSixWeeks = *(fromCopy + 54);
  *&self->_has |= 0x20000000000000uLL;
  if ((*(fromCopy + 107) & 0x100000000000000) != 0)
  {
LABEL_112:
    self->_callTwelveWeeks = *(fromCopy + 57);
    *&self->_has |= 0x100000000000000uLL;
  }

LABEL_113:
  if ((fromCopy[868] & 0x40) != 0)
  {
    self->_contactFamilyRelation = *(fromCopy + 202);
    *(&self->_has + 1) |= 0x4000000000uLL;
  }

  if (*(fromCopy + 106))
  {
    v13 = fromCopy;
    [(CloudFamilyAnalysisPETContactEvent *)self setContactRelation:?];
    fromCopy = v13;
  }

  v12 = v5[1];
  if ((v12 & 0x2000000000) != 0)
  {
    self->_contactFamilyName = *(fromCopy + 201);
    *(&self->_has + 1) |= 0x2000000000uLL;
    v12 = v5[1];
    if ((v12 & 0x800000000000) == 0)
    {
LABEL_119:
      if ((v12 & 0x800000000) == 0)
      {
        goto LABEL_120;
      }

      goto LABEL_226;
    }
  }

  else if ((v12 & 0x800000000000) == 0)
  {
    goto LABEL_119;
  }

  self->_contactParent = *(fromCopy + 211);
  *(&self->_has + 1) |= 0x800000000000uLL;
  v12 = v5[1];
  if ((v12 & 0x800000000) == 0)
  {
LABEL_120:
    if ((v12 & 0x1000000000) == 0)
    {
      goto LABEL_121;
    }

    goto LABEL_227;
  }

LABEL_226:
  self->_contactEmergency = *(fromCopy + 199);
  *(&self->_has + 1) |= 0x800000000uLL;
  v12 = v5[1];
  if ((v12 & 0x1000000000) == 0)
  {
LABEL_121:
    if ((v12 & 0x200000000000) == 0)
    {
      goto LABEL_122;
    }

    goto LABEL_228;
  }

LABEL_227:
  self->_contactEmergencyFamily = *(fromCopy + 200);
  *(&self->_has + 1) |= 0x1000000000uLL;
  v12 = v5[1];
  if ((v12 & 0x200000000000) == 0)
  {
LABEL_122:
    if ((v12 & 0x400000000000) == 0)
    {
      goto LABEL_123;
    }

    goto LABEL_229;
  }

LABEL_228:
  self->_contactInHome = *(fromCopy + 209);
  *(&self->_has + 1) |= 0x200000000000uLL;
  v12 = v5[1];
  if ((v12 & 0x400000000000) == 0)
  {
LABEL_123:
    if ((v12 & 0x10000000000) == 0)
    {
      goto LABEL_124;
    }

    goto LABEL_230;
  }

LABEL_229:
  self->_contactInPhotos = *(fromCopy + 210);
  *(&self->_has + 1) |= 0x400000000000uLL;
  v12 = v5[1];
  if ((v12 & 0x10000000000) == 0)
  {
LABEL_124:
    if ((v12 & 0x20000000000) == 0)
    {
      goto LABEL_125;
    }

    goto LABEL_231;
  }

LABEL_230:
  self->_contactInAirDrop = *(fromCopy + 204);
  *(&self->_has + 1) |= 0x10000000000uLL;
  v12 = v5[1];
  if ((v12 & 0x20000000000) == 0)
  {
LABEL_125:
    if ((v12 & 0x80000000000) == 0)
    {
      goto LABEL_126;
    }

    goto LABEL_232;
  }

LABEL_231:
  self->_contactInAirDropAtHome = *(fromCopy + 205);
  *(&self->_has + 1) |= 0x20000000000uLL;
  v12 = v5[1];
  if ((v12 & 0x80000000000) == 0)
  {
LABEL_126:
    if ((v12 & 0x100000000000) == 0)
    {
      goto LABEL_127;
    }

    goto LABEL_233;
  }

LABEL_232:
  self->_contactInFMFFollowingMe = *(fromCopy + 207);
  *(&self->_has + 1) |= 0x80000000000uLL;
  v12 = v5[1];
  if ((v12 & 0x100000000000) == 0)
  {
LABEL_127:
    if ((v12 & 0x40000000000) == 0)
    {
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_233:
  self->_contactInFMFSharingWithMe = *(fromCopy + 208);
  *(&self->_has + 1) |= 0x100000000000uLL;
  if ((v5[1] & 0x40000000000) != 0)
  {
LABEL_128:
    self->_contactInFMFFavorite = *(fromCopy + 206);
    *(&self->_has + 1) |= 0x40000000000uLL;
  }

LABEL_129:
}

@end